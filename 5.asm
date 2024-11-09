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
and eax, 0 ; обнуление регистра
and ebx, 0 ; обнуление регистра
mov eax, a1
mov ebx, b1
xchg eax, ebx ; замена местами а1 и b1
mov a1, eax ; запись значения регистра в переменную а1
mov b1, ebx ; запись значения регистра в переменную b1
and eax, 0 ; обнуление регистра для дальнейшей работы
and ebx, 0 ; обнуление регистра для дальнейшей работы
mov ax, a2 ; объявление переменной а2 в регистр ах
mov a2, ax ; присвоение значения регистра к переменной
add bx, dx ; сумма регистров
mov a3, bx ; присвоение суммы регистров к переменной
and eax, 0 ; обнуление регистра
and ebx, 0 ; обнуление регистра
and eax, 0 ; обнуление регистра с которым мы работаем
mov ax, n1 ; объявление переменной в регистр
add ax, n2 ; сумма переменных n1 и n2
sub ax, n3 ; вычитание из суммы значение третьей переменной
mov n1, ax ; запись значения регистра в переменную n1
mov ecx,offset fio
printf ("%s\n", ecx);
; вывод значений на экран
printf ("%d\n", a1)
printf ("%d\n", b1)
printf ("%d\n", a3)
printf ("%d\n", a2)
printf ("%d\n", n1)
inkey "Press any key!"
invoke ExitProcess,0  ; выход в Windows
end start
