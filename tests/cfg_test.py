import platform
import unittest
from disassemble_reassemble_check import compile, cd, disassemble
from pathlib import Path
import gtirb
from gtirb.cfg import EdgeType


ex_dir = Path("./examples/")
ex_asm_dir = ex_dir / "asm_examples"
ex_arm_asm_dir = ex_dir / "arm_asm_examples"
ex_arm64_asm_dir = ex_dir / "arm64_asm_examples"


class CfgTests(unittest.TestCase):
    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_relative_jump_tables(self):
        """
        Test edges for relative jump tables are added.
        """

        binary = "ex"
        with cd(ex_asm_dir / "ex_relative_switch"):
            self.assertTrue(compile("gcc", "g++", "-O0", []))
            self.assertTrue(disassemble(binary, format="--ir")[0])

            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
            m = ir_library.modules[0]

            # check that the jumping_block has edges
            # to all the jump table entries
            jumping_block_symbol = [
                s for s in m.symbols if s.name == "jumping_block"
            ][0]
            assert isinstance(jumping_block_symbol.referent, gtirb.CodeBlock)
            jumping_block = jumping_block_symbol.referent
            expected_dest_blocks = [
                s.referent
                for s in m.symbols
                if s.name in ["LBB5_4", "LBB5_5", "LBB5_6", "LBB5_7"]
            ]
            self.assertEqual(len(list(jumping_block.outgoing_edges)), 4)
            dest_blocks = [e.target for e in jumping_block.outgoing_edges]
            self.assertEqual(set(dest_blocks), set(expected_dest_blocks))

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_switch_limited_by_cmp(self):
        """
        Ensure jump table propagation is limited by comparsions.
        """
        binary = "ex"
        examples = [
            "ex_switch_limited_by_cmp",
            "ex_switch_limited_by_indirect_cmp",
            "ex_switch_limited_index_table",
        ]

        for example in examples:
            with self.subTest(example=example):
                with cd(ex_asm_dir / example):
                    self.assertTrue(compile("gcc", "g++", "-O0", []))
                    self.assertTrue(disassemble(binary, format="--ir")[0])

                    ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
                    m = ir_library.modules[0]

                # check that the .jump has edges to only the four jump table
                # entries
                jump_sym = next(s for s in m.symbols if s.name == ".jump")
                self.assertEqual(
                    len(list(jump_sym.referent.outgoing_edges)), 4
                )

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_switch_limited_by_cmp_arm64(self):
        """
        Ensure jump table propagation is limited by comparsions of the index
        register.
        """
        binary = "ex"
        with cd(ex_arm64_asm_dir / "ex_switch_limited_by_cmp"):
            self.assertTrue(
                compile(
                    "aarch64-linux-gnu-gcc", "aarch64-linux-gnu-g++", "-O0", []
                )
            )
            self.assertTrue(disassemble(binary, format="--ir")[0])

            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
            m = ir_library.modules[0]

        # check that the .jump has edges to only the four jump table entries
        jump_sym = next(s for s in m.symbols if s.name == ".jump")
        self.assertEqual(len(list(jump_sym.referent.outgoing_edges)), 4)

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_switch_overlap(self):
        """
        Test that with two overlapping jumptables, a conherent jump table is
        generated.
        """
        binary = "ex"
        with cd(ex_asm_dir / "ex_switch_overlap"):
            self.assertTrue(compile("gcc", "g++", "-O0", []))
            self.assertTrue(disassemble(binary, format="--ir")[0])

            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
            m = ir_library.modules[0]

        rodata = next(s for s in m.sections if s.name == ".jumptable")
        ref = None
        count = 0
        for _, _, symexpr in rodata.symbolic_expressions_at(
            range(rodata.address, rodata.address + rodata.size)
        ):
            if not isinstance(symexpr, gtirb.symbolicexpression.SymAddrAddr):
                continue

            # confirm all symexpr have the same ref
            if count == 0:
                ref = symexpr.symbol2

            self.assertEqual(symexpr.symbol2.name, ref.name)
            count += 1
        self.assertEqual(count, 4)

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_mips_cfg(self):
        """
        Test MIPS CFG
        """

        binary = "ex"
        adder_dir = ex_dir / "ex_adder"
        with cd(adder_dir):
            self.assertTrue(
                compile(
                    "mips-linux-gnu-gcc",
                    "mips-linux-gnu-g++",
                    "-O0",
                    [],
                    "qemu-mips -L /usr/mips-linux-gnu",
                )
            )
            self.assertTrue(disassemble(binary, format="--ir")[0])

            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
            m = ir_library.modules[0]

            # check that the 'add' block has two incoming edges and
            # two outgoing edges.
            add_symbol = [s for s in m.symbols if s.name == "add"][0]
            assert isinstance(add_symbol.referent, gtirb.CodeBlock)
            add_block = add_symbol.referent
            self.assertEqual(len(list(add_block.outgoing_edges)), 2)
            self.assertEqual(len(list(add_block.incoming_edges)), 2)

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_arm_cfg(self):
        """
        Test ARM32 CFG
        """

        binary = "ex"
        adder_dir = ex_arm_asm_dir / "ex1_no_pie"
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

            sym = [s for s in m.symbols if s.name == "main"][0]
            block = sym.referent
            self.assertEqual(len(list(block.outgoing_edges)), 2)

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_arm_cfg_bx_pc(self):
        """
        Test ARM32 CFG
        """
        binary = "ex"
        adder_dir = ex_arm_asm_dir / "ex_bx_pc"
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

            sym = [s for s in m.symbols if s.name == "main"][0]
            block = sym.referent
            self.assertEqual(len(list(block.outgoing_edges)), 1)

            edge = list(block.outgoing_edges)[0]
            self.assertEqual(edge.label.type, gtirb.Edge.Type.Branch)
            self.assertIsInstance(edge.target, gtirb.CodeBlock)

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_arm_cfg2(self):
        """
        Test ARM32 CFG
        """
        binary = "ex"
        adder_dir = ex_arm_asm_dir / "ex_cfg"
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

            main = [s for s in m.symbols if s.name == "main"][0]
            main_block = main.referent

            # check on bxeq lr

            self.assertEqual(len(list(main_block.outgoing_edges)), 2)

            edge_types = {e.label.type for e in main_block.outgoing_edges}
            self.assertEqual(
                edge_types,
                {gtirb.Edge.Type.Fallthrough, gtirb.Edge.Type.Return},
            )

            edge1 = list(main_block.outgoing_edges)[0]
            edge2 = list(main_block.outgoing_edges)[1]
            if edge1.label.type == gtirb.Edge.Type.Return:
                self.assertTrue(edge1.label.conditional)
            if edge2.label.type == gtirb.Edge.Type.Return:
                self.assertTrue(edge2.label.conditional)

            # check on bx lr
            sym = [s for s in m.symbols if s.name == "foo"][0]
            bx_block = sym.referent

            self.assertEqual(len(list(bx_block.outgoing_edges)), 1)

            edge = list(bx_block.outgoing_edges)[0]
            self.assertEqual(edge.label.type, gtirb.Edge.Type.Return)

            # check on blx foo
            insn_blx = b"\x00\xf0"

            for block in m.code_blocks:
                if (
                    block.address >= main_block.address
                    and block.contents[:2] == insn_blx
                ):
                    blx_block = block

            self.assertEqual(len(list(blx_block.outgoing_edges)), 2)

            edge_types = {e.label.type for e in blx_block.outgoing_edges}
            self.assertEqual(
                edge_types, {gtirb.Edge.Type.Fallthrough, gtirb.Edge.Type.Call}
            )

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_arm_tbb_cfg(self):
        """
        Test ARM32 CFG from TBB/TBH jumptables
        """
        binary = "ex"
        examples = (
            ("ex_tbb", b"\xdf\xe8\x00\xf0", 1),
            ("ex_tbh", b"\xdf\xe8\x10\xf0", 2),
            ("ex_tbb_r3_ldr", b"\xd3\xe8\x00\xf0", 1),
            ("ex_tbb_r3_adr", b"\xd3\xe8\x00\xf0", 1),
        )
        for example_dir, jump_instruction_bytes, tbl_entry_size in examples:
            with self.subTest(example_dir=example_dir):
                with cd(ex_arm_asm_dir / example_dir):
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
                            extra_strip_flags=["--keep-symbol=table"],
                        )[0]
                    )

                    ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
                    m = ir_library.modules[0]

                    # Locate the tbb instruction
                    jumping_block = None
                    for block in m.code_blocks:
                        if (
                            block.contents[-len(jump_instruction_bytes) :]
                            == jump_instruction_bytes
                        ):
                            jumping_block = block
                            break
                    else:
                        self.fail("Could not find tbb/tbh instruction")

                    # check that the tbb block has edges to all the jump table
                    # entries
                    self.assertEqual(
                        len(list(jumping_block.outgoing_edges)), 4
                    )
                    # check that there are symbolic expressions for all four
                    # jump table entries
                    if example_dir.startswith("ex_tbb_r3_"):
                        table_sym = next(
                            s for s in m.symbols if s.name == "table"
                        )
                        table_address = table_sym.referent.address
                    else:
                        table_address = jumping_block.address + len(
                            jump_instruction_bytes
                        )
                    for i in range(0, 4):
                        symexprs = list(
                            m.symbolic_expressions_at(
                                table_address + i * tbl_entry_size
                            )
                        )
                        self.assertEqual(len(symexprs), 1)

                    # check functionBlocks
                    function_blocks = m.aux_data["functionBlocks"].data
                    for _, blocks in function_blocks.items():
                        if jumping_block in blocks:
                            for edge in jumping_block.outgoing_edges:
                                self.assertIn(edge.target, blocks)
                            break
                    else:
                        self.fail("Jumping block not found in functionBlocks")

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_arm_tbb_zero_entry_cfg(self):
        """
        Test ARM32 CFG for TBB with a zero first entry
        """
        binary = "ex"

        with cd(ex_arm_asm_dir / "ex_tbb_zero"):
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
                    extra_strip_flags=["--keep-symbol=table"],
                )[0]
            )

            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
            m = ir_library.modules[0]

            # Locate the tbb instruction
            jumping_block = None
            jump_instruction_bytes = b"\xdf\xe8\x00\xf0"
            for block in m.code_blocks:
                if (
                    block.contents[-len(jump_instruction_bytes) :]
                    == jump_instruction_bytes
                ):
                    jumping_block = block
                    break
            else:
                self.fail("Could not find tbb/tbh instruction")

            # check that the tbb block has edges to all the jump table
            # entries
            self.assertEqual(len(list(jumping_block.outgoing_edges)), 3)
            # check that there are symbolic expressions for jump table entries
            # but not the first one.
            table_address = jumping_block.address + len(jump_instruction_bytes)
            tbl_entry_size = 1
            self.assertEqual(
                len(list(m.symbolic_expressions_at(table_address))), 0
            )
            for i in range(1, 4):
                symexprs = list(
                    m.symbolic_expressions_at(
                        table_address + i * tbl_entry_size
                    )
                )
                self.assertEqual(len(symexprs), 1)

            # check functionBlocks
            function_blocks = m.aux_data["functionBlocks"].data
            for _, blocks in function_blocks.items():
                if jumping_block in blocks:
                    for edge in jumping_block.outgoing_edges:
                        self.assertIn(edge.target, blocks)
                    break
            else:
                self.fail("Jumping block not found in functionBlocks")

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_arm_relative_jump_table3(self):
        """
        Test ARM jumptable with ldr, add, bkpt
        """
        binary = "ex"

        with cd(ex_arm_asm_dir / "ex_relative_jump_table3"):
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

            main = next(s for s in m.symbols if s.name == "main")
            main_block = main.referent
            jump_block = next(
                edge
                for edge in main_block.outgoing_edges
                if edge.label.type == EdgeType.Fallthrough
            ).target

            self.assertEqual(len(list(jump_block.outgoing_edges)), 4)

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_x86_64_object_cfg(self):
        """
        Test X86_64 object file relocation edges.
        """
        binary = "ex.o"
        with cd(ex_dir / "ex1"):
            self.assertTrue(compile("gcc", "g++", "-O0", ["--save-temps"]))
            self.assertTrue(disassemble(binary, format="--ir")[0])

            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
            m = ir_library.modules[0]

            call = b"\xe8\x00\x00\x00\x00"
            blocks = [b for b in m.code_blocks if b.contents.endswith(call)]
            self.assertTrue(
                all(len(list(b.outgoing_edges)) == 2 for b in blocks)
            )

    @unittest.skipUnless(
        platform.system() == "Linux", "This test is linux only."
    )
    def test_arm_jumptable_cfg(self):
        """
        Test ARM32 CFG on a ldrls pc, [pc, r0, LSL2]-style jumptable.
        """
        binary = "ex"
        adder_dir = ex_arm_asm_dir / "ex_jumptable"
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
            self.assertTrue(
                disassemble(
                    binary,
                    strip_exe="arm-linux-gnueabihf-strip",
                    strip=True,
                    format="--ir",
                )
            )

            # ldrls pc, [pc, r0, LSL2]
            insn = b"\x00\xf1\x9f\x97"

            ir_library = gtirb.IR.load_protobuf(binary + ".gtirb")
            m = ir_library.modules[0]

            jumping_block = None
            for block in m.code_blocks:
                if block.contents.endswith(insn):
                    jumping_block = block

            self.assertIsNotNone(jumping_block)

            edges_by_type = {
                gtirb.Edge.Type.Branch: [],
                gtirb.Edge.Type.Fallthrough: [],
            }

            for edge in jumping_block.outgoing_edges:
                if edge.label.type not in edges_by_type:
                    self.fail(
                        "Unexpected edge type: {}".format(edge.label.type)
                    )
                edges_by_type[edge.label.type].append(edge)

            self.assertEqual(6, len(edges_by_type[gtirb.Edge.Type.Branch]))
            self.assertEqual(
                1, len(edges_by_type[gtirb.Edge.Type.Fallthrough])
            )

            for edges in edges_by_type[gtirb.Edge.Type.Branch]:
                self.assertIsInstance(edge.target, gtirb.CodeBlock)


if __name__ == "__main__":
    unittest.main()
