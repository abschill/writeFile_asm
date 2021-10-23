global _start
section .text
_start: jmp main

main: 
mov edx, len
mov ecx, msg
mov ebx, 1 ;file handle (stdout)
mov eax, 4 ; call num (sys_write)
int 0x80
mov ebx, 0 ;syscall exit code
mov eax, 1 ;system call (sys_exit)
int 0x80

section .data
msg: db "im gonna foo your bar", 0xa
len equ $ - msg
