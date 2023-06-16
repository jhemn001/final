import platform
import unittest
from disassemble_reassemble_check import compile, cd, disassemble
from pathlib import Path
import gtirb

ex_arm_asm_dir = Path("./examples/arm_asm_examples")


class ArmMiscTests(unittest.TestCase):
    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_arm_invalid_ldr(self):
        """
        Test ARM32 invalid load instructions are not disassembled as code.
        """
        binary = "ex"
        adder_dir = ex_arm_asm_dir / "ex_ldr"
        with cd(adder_dir):
            self.assertTrue(
                compile(
                    "arm-linux-gnueabihf-gcc",
                    "arm-linux-gnueabihf-g++",
                    "-O0",
                    [],
                    "qemu-arm -L /usr/arm-linux-gnueabihf",
                )
            )

            # collect the invalid symbols
            self.assertTrue(disassemble(binary, format="--ir")[0])
            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
            m = ir_library.modules[0]
            invalid_syms = [
                sym.name
                for sym in m.symbols
                if sym.name.startswith(".INVALID")
            ]
            extra_strip_flags = ["--keep-symbol=main"]
            for sym in invalid_syms:
                extra_strip_flags.append("--keep-symbol={}".format(sym))

            self.assertTrue(
                disassemble(
                    binary,
                    strip_exe="arm-linux-gnueabihf-strip",
                    strip=True,
                    format="--ir",
                    extra_strip_flags=extra_strip_flags,
                )
            )

            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
            m = ir_library.modules[0]

            main_first_block = None
            blocks_are_data = []
            for sym in m.symbols:
                if sym.name == "main":
                    main_first_block = sym.referent
                    continue
                if not sym.name.startswith(".INVALID"):
                    continue

                blocks_are_data.append(
                    isinstance(sym.referent, gtirb.DataBlock)
                )

            self.assertTrue(isinstance(main_first_block, gtirb.CodeBlock))
            self.assertTrue(all(blocks_are_data))
            self.assertEqual(len(blocks_are_data), len(invalid_syms))

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_thumb_at_section_start(self):
        """
        Test that Thumb code is discovered at the start of a section
        """
        binary = "ex"
        with cd(ex_arm_asm_dir / "ex_thumb_at_section_start"):
            self.assertTrue(
                compile(
                    "arm-linux-gnueabihf-gcc",
                    "arm-linux-gnueabihf-g++",
                    "-O0",
                    [],
                    "qemu-arm -L /usr/arm-linux-gnueabihf",
                )
            )

            self.assertTrue(
                disassemble(
                    binary,
                    format="--ir",
                    strip_exe="arm-linux-gnueabihf-strip",
                    strip=True,
                )[0]
            )
            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")

            m = ir_library.modules[0]

            section = next(s for s in m.sections if s.name == ".text")
            self.assertEqual(len(list(m.code_blocks_on(section.address))), 1)

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_arm_ldcl(self):
        """
        Test that ldcl instructions, valid only on ARMv7 and earlier, decode
        correctly.
        """
        binary = "ex"
        adder_dir = ex_arm_asm_dir / "ex_ldcl"
        with cd(adder_dir):
            self.assertTrue(
                compile(
                    "arm-linux-gnueabihf-gcc",
                    "arm-linux-gnueabihf-g++",
                    "-O0",
                    [],
                    "qemu-arm -L /usr/arm-linux-gnueabihf",
                )
            )

            self.assertTrue(disassemble(binary, format="--ir")[0])
            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
            m = ir_library.modules[0]

            for sym in m.symbols:
                if sym.name == "main":
                    block = sym.referent
                    break

            self.assertIsInstance(block, gtirb.block.CodeBlock)
            # ensure main decoded as ARM, not Thumb.
            self.assertEqual(
                block.decode_mode, gtirb.CodeBlock.DecodeMode.Default
            )

            # Check auxdata
            archInfo = m.aux_data["archInfo"].data
            self.assertIn("Arch", archInfo)
            self.assertIn("Profile", archInfo)
            self.assertEqual(archInfo["Arch"], "v7")
            self.assertEqual(archInfo["Profile"], "Application")


if __name__ == "__main__":
    unittest.main()
