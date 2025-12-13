.section .data
msg:
    .ascii "Hello\n"

.section .text
.global _start

_start:
    mov $1, %rax        # sys_write
    movq $1, %rdi        # stdout
    movq $msg, %rsi      # buffer
    movq $6, %rdx        # length
    syscall

    movq $60, %rax       # sys_exit
    xor %rdi, %rdi
    syscall

