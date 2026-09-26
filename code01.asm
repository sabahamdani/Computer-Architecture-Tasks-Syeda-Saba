
global _main
extern _printf
section .data
format db "EAX = 0x%08X", 10, 0
section .text
_main:
mov eax, 0x12345678
Push the number that printf will display.
push eax
Push the address of the format string.
push format
 Display the result.
call _printf

add esp, 8
Return 0.
xor eax, eax
ret