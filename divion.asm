section .text
global _start
_start:
mov ax,'8'
sub ax,'0'
mov bl,'0'
div bl
add ax,'0'
mov [res],ax
mov ecx,msg
mov edx,len
mov ebx,1
mov eax,4
int 80h
mov ecx,res
mov edx,1
mov ebx,1
mov eax,4
int 80h
mov eax,1
int 80h
section .data
msg db 'the result is: ',0xa,0xd
len equ $- msg
segment .bss
res resb 1

