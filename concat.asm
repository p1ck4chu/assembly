section .text
global _start
_start:
mov edx,9
mov ecx,name
mov ebx,1
mov eax,4
int 80h
mov [name],dword 'nuha' ;indirect memory addressing
mov edx,8
mov ecx,name
mov ebx,1
mov eax,4
int 80h
mov eax,1
int 80h
section .data
name db 'zara ali '
