Jay Hemnani								       Jhemn001


Title: Patching

Github: 

Design & Implementation:
Our Python script consists of three primary parts:

Disassembly: The script starts by using an outside tool called "ddisasm" to turn the binary file it is given into assembly code. The result from disassembling is saved in a '.s' file with the same base name as the binary file.

Patch: The script subsequently reads the disassembled code line by line, amending specific parts according to set rules:
At the code's start, it injects a new code block that establishes a routine (cfi_check_ret). This routine scrutinizes the return address against the secure code and, in case of discrepancy, invokes the 'exit' function to cease execution.
Upon encountering a 'callq' instruction, it incorporates the secure code after the instruction. This code will be atop the stack when the invoked function returns.
For a 'retq' instruction, it substitutes it with a 'jmp cfi_check_ret' instruction, redirecting the execution towards the newly inserted routine for return address verification.
All remaining lines are retained without modification.

Reassembly: The adjusted assembly code is reassembled into a binary via the 'as' and 'ld' commands. The fresh binary is stored with a '_patched' suffix, and the interim '.s' file is deleted post-process.

The file to be patched is provided as a command-line argument to the script.

Screenshots:




Disclaimer: Though, the files are different in screenshots, but it works on all.
