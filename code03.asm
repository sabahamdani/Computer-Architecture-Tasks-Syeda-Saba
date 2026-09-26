global _main
extern _printf
section .data
format db "AL = %d, BL%d", 10, 0
section .text
_main:
mov al, 10
; Copy AL into BL.
mov bl, al
movzx ecx, bl
; Convert AL to a 32-bit value.
; Store it in EAX.
movzx eax, al
push ecx
push eax
push format
call _printf
; 3 x 4 = 12 bytes.
add esp, 12
7
xor eax, eax
ret