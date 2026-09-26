
global _main
extern _printf
section .data
result db 0

format db "AL = %d, BL = %d, Memory = %d", 10, 0
section .text
_main

; Put 10 into AL.

mov al, 1
; Add 20.
;
; 10 + 20 = 30
add al, 20
40

; Subtract 5.
;
; 30 - 5 = 25

sub al, 5

mov [result], al

mov bl, [result
movzx eax, al
movzx ecx, bl
movzx edx, byte [result]

 AL = %d, BL = %d, Memory

41
; Memory
; BL
; AL
push edx
push ecx
push eax
push format
call _printf
 
 Four 32-bit parameters were pushed.

 4 x 4 bytes = 16 bytes.


add esp, 16
xor eax, eax
ret