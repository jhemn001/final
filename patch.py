import subprocess, argparse, os

def disassemble_binary(binary_path):
    # Use ddisasm to disassemble the binary
    subprocess.run(['ddisasm', binary_path, '--asm', binary_path + '.s'])

def assemble_binary(binary_path):
    # Use ddisasm to disassemble the binary
    result = subprocess.run(['as', binary_path + '.s' , '-o', binary_path + '.out'], capture_output=True, text=True)
    result = subprocess.run(['ld', binary_path + '.out' , '-e', '_start', '-o', binary_path], capture_output=True, text=True)
    assembly = result.stdout
    return assembly

def patch_binary(binary_path):
    
    secure_code = b'prefetchnta 0x11223344\n'  # Example secure code (NOP instructions)

    new_ret_block = b'''
    cfi_check_ret:
    push %rax
    movq 8(%rsp), %rax
    cmpl $0x11223344, 4(%rax)
    jne .L_failed_ret
    pop %rax
    retq
.L_failed_ret:
    call exit
    '''

    # Read the binary file
    file_one = open(binary_path + '.s', 'rb')
    file_two = open(binary_path + "_patched.s", 'wb')

    for line in file_one:
        if line.startswith(b'_start:'):
            file_two.write(new_ret_block)
            file_two.write(line)
        elif b'callq' in line:
            file_two.write(line)
            file_two.write(secure_code)
        elif b'retq' in line:
            file_two.write(b'jmp cfi_check_ret\n')
        else:
            file_two.write(line)

    file_one.close()
    file_two.close()

    # Write the patched binary to a new file
    patched_path = binary_path + '_patched'

    assemble_binary(patched_path)
    os.remove(binary_path + '.s')
    # os.remove(binary_path + '_patched.out')
    # os.remove(binary_path + '._patched.s')


    return patched_path


parser = argparse.ArgumentParser()
parser.add_argument("file_name")
args = parser.parse_args()

file_name = args.file_name

# Disassemble the binary
disassembly = disassemble_binary(file_name)
# print(disassembly)

# Patch the binary
patched_binary_path = patch_binary(file_name)
print(f"Patched binary saved to: {patched_binary_path}")