
global _main
extern _printf
section .data
; Create one byte containing 10.
number db 10
format db "New memory value = %d", 10, 0
section .text
_main:
Put 5 into BLmov bl, 5
 10 + 5 = 15
add byte [number], bl
movzx eax, byte [number]
push eax
push format
call _printf
add esp, 8
36
xor