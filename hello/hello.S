.extern puts
.extern exit

.section .rodata
msg:
        .string "Hello World!"

.section .text
.global main
main:
        lui     a0, %hi(msg)
        addi    a0, a0, %lo(msg)
        jal     ra, puts
        jal     ra, exit
