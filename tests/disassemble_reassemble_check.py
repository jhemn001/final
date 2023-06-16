import argparse
import contextlib
import gtirb
import os
import shlex
import subprocess
from pathlib import Path
from timeit import default_timer as timer
from typing import List

import platform

import asm_db
import check_gtirb


class bcolors:
    """
    Define some colors for printing in the terminal
    """

    OKBLUE = "\033[94m"
    OKGREEN = "\033[92m"
    WARNING = "\033[93m"
    FAIL = "\033[91m"
    ENDC = "\033[0m"

    @classmethod
    def okblue(cls, *args):
        return cls.OKBLUE + " ".join(args) + cls.ENDC

    @classmethod
    def okgreen(cls, *args):
        return cls.OKGREEN + " ".join(args) + cls.ENDC

    @classmethod
    def warning(cls, *args):
        return cls.WARNING + " ".join(args) + cls.ENDC

    @classmethod
    def fail(cls, *args):
        return cls.FAIL + " ".join(args) + cls.ENDC


@contextlib.contextmanager
def get_target(binary, strip_exe, strip, sstrip, extra_strip_flags=None):
    if strip:
        print("# stripping binary\n")
        subprocess.run(["cp", binary, binary + ".stripped"])
        binary = binary + ".stripped"

        cmd = build_chroot_wrapper() + [strip_exe, "--strip-unneeded", binary]
        if extra_strip_flags:
            cmd.extend(extra_strip_flags)

        completed_process = subprocess.run(cmd)
        if completed_process.returncode != 0:
            print(bcolors.fail("# strip failed\n"))
            binary = None

        stripped_binary = binary
    if sstrip:
        print("# stripping sections\n")
        subprocess.run(["cp", binary, binary + ".sstripped"])
        binary = binary + ".sstripped"
        completed_process = subprocess.run(
            build_chroot_wrapper() + ["sstrip", binary]
        )
        if completed_process.returncode != 0:
            print(bcolors.fail("# sstrip failed\n"))
            binary = None

        sstripped_binary = binary
    try:
        yield binary
    finally:
        if strip:
            os.remove(stripped_binary)
        if sstrip:
            os.remove(sstripped_binary)


@contextlib.contextmanager
def cd(new_dir):
    prev_dir = os.getcwd()
    os.chdir(str(new_dir))
    try:
        yield
    finally:
        os.chdir(prev_dir)


def resolve_chroot_root(chroot: str) -> str:
    """Get the root path for a chroot"""
    if not chroot:
        return None

    schroot_result = subprocess.run(
        ["schroot", "--location", "--chroot", chroot],
        capture_output=True,
        encoding="utf-8",
    )
    chroot_root_path = schroot_result.stdout.strip()
    return chroot_root_path


# These chroot options support running the end-to-end tests in OS chroots in
# the nightly tests.
MAKE_CHROOT = os.getenv("E2E_MAKE_CHROOT", None)
MAKE_CHROOT_ROOT = resolve_chroot_root(MAKE_CHROOT)


def build_chroot_wrapper() -> List[str]:
    """Build command for executing in the configured chroot"""
    if MAKE_CHROOT:
        chroot_cwd_path = os.path.relpath(os.getcwd(), MAKE_CHROOT_ROOT)
        wrapper = [
            "schroot",
            "--chroot",
            MAKE_CHROOT,
            "--directory",
            chroot_cwd_path,
            "--preserve-environment",
            "--",
        ]
    else:
        wrapper = []
    return wrapper


def make(target=""):
    target = [] if target == "" else [target]

    if platform.system() == "Linux":
        return build_chroot_wrapper() + ["make", "-e"] + target
    elif platform.system() == "Windows":
        return ["nmake", "/E", "/F", "Makefile.windows"] + target


def compile(
    compiler,
    cxx_compiler,
    optimizations,
    extra_flags,
    exec_wrapper=None,
    arch=None,
):
    """
    Clean the project and compile it using the compiler
    'compiler', the cxx compiler 'cxx_compiler' and the flags in
    'optimizations' and 'extra_flags'
    """

    def quote_args(*args):
        return " ".join(shlex.quote(arg) for arg in args)

    # Copy the current environment and modify the copy.
    env = dict(os.environ)
    env["CC"] = compiler
    env["CXX"] = cxx_compiler
    env["CFLAGS"] = quote_args(optimizations, *extra_flags)
    env["CXXFLAGS"] = quote_args(optimizations, *extra_flags)
    if exec_wrapper:
        env["EXEC"] = exec_wrapper
    if arch:
        env["TARGET_ARCH"] = arch
    completedProcess = subprocess.run(
        make("clean"), env=env, stdout=subprocess.DEVNULL
    )
    if completedProcess.returncode == 0:
        completedProcess = subprocess.run(
            make(), env=env, stdout=subprocess.DEVNULL
        )
    return completedProcess.returncode == 0


def disassemble(
    binary,
    output=None,
    strip_exe="strip",
    strip=False,
    sstrip=False,
    format="--asm",
    extra_args=[],
    extra_strip_flags=None,
):
    """
    Disassemble the binary 'binary' and generate ddisasm output 'output'
    """
    if output is None:
        if format == "--asm":
            output = binary + ".s"
        elif format == "--ir":
            output = binary + ".gtirb"

    with get_target(
        binary, strip_exe, strip, sstrip, extra_strip_flags=extra_strip_flags
    ) as target_binary:
        print("# Disassembling " + target_binary + "\n")
        start = timer()
        completedProcess = subprocess.run(
            ["ddisasm", target_binary, format, output, "-j", "1"] + extra_args,
            timeout=300,
        )
        time_spent = timer() - start
    if completedProcess.returncode == 0:
        print(bcolors.okgreen("Disassembly succeed"))
        return True, time_spent
    else:
        print(bcolors.fail("Disassembly failed"))
        return False, time_spent


def skip_reassemble(compiler, binary, extra_flags):
    print(bcolors.warning(" No reassemble"))
    return True


def reassemble(compiler, binary, extra_flags):
    """
    Reassemble the assembly file binary+'.s' into a new binary
    """
    print("# Reassembling", binary + ".s", "into", binary)

    if "uasm" in compiler:
        obj = Path(binary).with_suffix(".o")
        cmd = [compiler, *extra_flags, "-Fo", obj, binary + ".s"]
        proc = subprocess.run(cmd)
    elif platform.system() == "Linux":
        cmd = (
            build_chroot_wrapper()
            + [compiler, binary + ".s", "-o", binary]
            + extra_flags
        )
    elif platform.system() == "Windows":
        cmd = [compiler, binary + ".s"] + extra_flags

        if "/link" not in cmd:
            cmd.append("/link")
        cmd.append("/out:" + binary)

        # NOTE:
        # Reassembling with SAFESEH support requires redundant `/safeseh' flags
        # and fails if the first flag does not precede the source file in the
        # command-line. We insert the flag here as the first argument.
        if "/safeseh" in extra_flags:
            cmd.insert(1, "/safeseh")

    print("compile command:", *cmd)
    proc = subprocess.run(cmd)
    if proc.returncode != 0:
        print(bcolors.fail("# Reassembly failed\n"))
        return False
    print(bcolors.okgreen("# Reassembly succeed"))
    return True


def reassemble_using_makefile(assembler, binary, extra_flags):
    def quote_args(*args):
        return " ".join(shlex.quote(arg) for arg in args)

    # Copy the current environment and modify the copy.
    env = dict(os.environ)
    env["AS"] = assembler
    env["ASFLAGS"] = quote_args(*extra_flags)
    print("# Reassembling", binary + ".s", "into", binary)
    completedProcess = subprocess.run(
        make("reassemble"), env=env, stdout=subprocess.DEVNULL
    )
    if completedProcess.returncode != 0:
        print(bcolors.fail("# Reassembly failed\n"))
        return False
    print(bcolors.okgreen("# Reassembly succeed"))
    return True


def link(
    linker: str, binary: str, obj: List[str], extra_flags: List[str]
) -> bool:
    """Link a reassembled object file into a new binary."""

    # Strip implicit .o suffix from reassembled object targets.
    if Path(binary).suffix == ".o":
        binary = Path(binary).with_suffix("").name

    print("# Linking", ", ".join(obj), "into", binary)
    cmd = (
        build_chroot_wrapper() + [linker] + obj + ["-o", binary] + extra_flags
    )
    print("link command:", " ".join(cmd))
    proc = subprocess.run(cmd)
    if proc.returncode != 0:
        print(bcolors.fail("# Linking failed\n"))
        return False
    print(bcolors.okgreen("# Linking succeed"))
    return True


def test(exec_wrapper=None):
    """
    Test the project with  'make check'.
    """
    print("# testing\n")
    env = dict(os.environ)
    if exec_wrapper:
        env["EXEC"] = exec_wrapper
    completedProcess = subprocess.run(
        make("check"), env=env, stderr=subprocess.DEVNULL, timeout=60
    )
    if completedProcess.returncode != 0:
        print(bcolors.fail("# Testing FAILED\n"))
        return False
    else:
        print(bcolors.okgreen("# Testing SUCCEED\n"))
        return True


def disassemble_reassemble_test(
    make_dir,
    binary,
    extra_compile_flags=[],
    extra_reassemble_flags=["-no-pie"],
    extra_link_flags=[],
    reassembly_compiler="gcc",
    c_compilers=["gcc", "clang"],
    cxx_compilers=["g++", "clang++"],
    optimizations=["-O0", "-O1", "-O2", "-O3", "-Os"],
    linker=None,
    strip_exe="strip",
    strip=False,
    sstrip=False,
    reassemble_function=reassemble,
    skip_test=False,
    exec_wrapper=None,
    arch=None,
    extra_ddisasm_flags=[],
    cfg_checks=None,
    upload=True,
):
    """
    Disassemble, reassemble and test an example with the given compilers and
    optimizations.
    """
    assert len(c_compilers) == len(cxx_compilers)
    compile_errors = 0
    disassembly_errors = 0
    reassembly_errors = 0
    link_errors = 0
    test_errors = 0
    gtirb_errors = 0
    with cd(make_dir):
        for compiler, cxx_compiler in zip(c_compilers, cxx_compilers):
            for optimization in optimizations:
                print(
                    bcolors.okblue(
                        "Project",
                        str(make_dir),
                        "with",
                        compiler,
                        "and",
                        optimization,
                        *extra_compile_flags
                    )
                )
                if not compile(
                    compiler,
                    cxx_compiler,
                    optimization,
                    extra_compile_flags,
                    exec_wrapper,
                    arch,
                ):
                    compile_errors += 1
                    continue

                gtirb_filename = binary + ".gtirb"
                success, time = disassemble(
                    binary,
                    None,
                    strip_exe,
                    strip,
                    sstrip,
                    extra_args=["--ir", gtirb_filename] + extra_ddisasm_flags,
                )

                # Do some GTIRB checks
                module = gtirb.IR.load_protobuf(gtirb_filename).modules[0]
                gtirb_errors += check_gtirb.run_checks(
                    module, cfg_checks or []
                )

                if upload:
                    asm_db.upload(
                        os.path.basename(make_dir),
                        binary + ".s",
                        [compiler, cxx_compiler],
                        [optimization] + extra_compile_flags,
                        strip,
                    )
                print("Time " + str(time))
                if not success:
                    disassembly_errors += 1
                    continue
                if not reassemble_function(
                    reassembly_compiler, binary, extra_reassemble_flags
                ):
                    reassembly_errors += 1
                    continue
                if linker and not link(
                    linker,
                    binary,
                    [Path(binary).with_suffix(".o").name],
                    extra_link_flags,
                ):
                    link_errors += 1
                    continue
                if skip_test or reassemble_function == skip_reassemble:
                    print(bcolors.warning(" No testing"))
                    continue
                if not test(exec_wrapper):
                    test_errors += 1
    total_errors = (
        compile_errors
        + gtirb_errors
        + disassembly_errors
        + reassembly_errors
        + link_errors
        + test_errors
    )
    return total_errors == 0


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Disassemble reassemble and test a project with ddisasm"
    )
    parser.add_argument("make_dir", help="project to test")
    parser.add_argument("binary", help="binary within the project")
    parser.add_argument("--extra_compile_flags", nargs="*", type=str)
    parser.add_argument("--extra_reassemble_flags", nargs="*", type=str)
    parser.add_argument("--extra_link_flags", nargs="*", type=str)
    parser.add_argument("--reassembly_compiler", type=str, default="gcc")
    parser.add_argument("--c_compilers", nargs="*", type=str)
    parser.add_argument("--cxx_compilers", nargs="*", type=str)
    parser.add_argument("--optimizations", nargs="*", type=str)
    parser.add_argument("--strip_exe", type=str, default="strip")
    parser.add_argument(
        "--strip",
        help="strip binaries before disassembling",
        action="store_true",
    )
    parser.add_argument(
        "--sstrip",
        help="strip sections before disassembling",
        action="store_true",
    )
    parser.add_argument(
        "--skip_test", help="skip testing", action="store_true"
    )
    parser.add_argument(
        "--skip_reassemble", help="skip reassemble", action="store_true"
    )

    args = parser.parse_args()
    disassemble_reassemble_test(
        **{k: v for k, v in args.__dict__.items() if v is not None}
    )
