
global _main
extern _printf
section .data
section .text
_main:
 AL = 11110000
mov al, 0xF0
 BL = 00001111
mov bl, 0x0F
test al, bl
 Jump if the result was zero.
jz no_common_bitstest al, bl
call _printf
add esp, 4
jmp finished
28
no_common_bits:
push zeroMessage
call _printf
add esp, 4
finished:
xor eax, eax
ret