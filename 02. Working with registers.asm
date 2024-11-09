include \masm32\include\masm32rt.inc

.data

 a1 dword 11
 b1 dword 13032003
 a2 word 34 
 a3 word 61 
 n1 word 15
 n2 word 3
 n3 word 11
 fio db 5 dup ("KononenkoDmitriy")

.code
start:

and eax, 0 ; 
and ebx, 0 ; 
mov eax, a1
mov ebx, b1
xchg eax, ebx ; замена местами а1 и b1
mov a1, eax ; 
mov b1, ebx ; 
and eax, 0 ; 
and ebx, 0 ; 
mov ax, a2 ; 
mov a2, ax ; 
add bx, dx ; 
mov a3, bx ; 
and eax, 0 ; 
and ebx, 0 ; 
and eax, 0 ; 
mov ax, n1 ; 
add ax, n2 ; 
sub ax, n3 ; 
mov n1, ax ; 
mov ecx,offset fio

printf ("%s\n", ecx);

printf ("%d\n", a1)
printf ("%d\n", b1)
printf ("%d\n", a3)
printf ("%d\n", a2)
printf ("%d\n", n1)

inkey "Press any key!"
invoke ExitProcess,0  ; выход в Windows

end start
