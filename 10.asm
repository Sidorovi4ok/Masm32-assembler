.686
.model flat, stdcall
option casemap:none
include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\user32.inc
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
include <\masm32\include\masm32.inc>
includelib <\masm32\lib\masm32.lib>
include <\masm32\include\debug.inc>
includelib <\masm32\lib\debug.lib>
.data
_12 dd 12
_8 dd 8
_n dd 1
_res1 dd ?
;8(12-n)
_title db "Практическая занятие №11 Организация цикла",0
strbuf dw ?,0
_text db "Вывод результата через MessageBox:",0ah,"Результат: %d - целая часть",0ah,0ah,0
.code
start:
mov eax,0 ; обнуление суммы
mov ecx,1 ; первое слагаемое 
cycle: cmp ecx, 10 ; слагаемое больше 10
 jg continue ; выход из цикла
mov eax, 12
mov ebx,ecx
sub eax,ebx
mul _8
add eax,_res1
mov _res1,eax
 PrintDec eax
 PrintLine 
 inc ecx ; следующее число
 jmp cycle ; возврат в цикл 
continue: mov _res1,eax ; выход, сумма - в ax
invoke wsprintf, ADDR strbuf, ADDR _text, _res1
invoke MessageBox, NULL, addr strbuf, addr _title, MB_ICONINFORMATION
invoke ExitProcess, 0
END start