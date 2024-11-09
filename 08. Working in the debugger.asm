.386
.model flat, stdcall
option casemap :none
include <\masm32\include\windows.inc>
include <\masm32\include\kernel32.inc>
includelib <\masm32\lib\kernel32.lib>
include <\masm32\include\user32.inc>
includelib <\masm32\lib\user32.lib>
include <\masm32\include\masm32.inc>
includelib <\masm32\lib\masm32.lib>
include <\masm32\include\debug.inc>
includelib <\masm32\lib\debug.lib>

.data
massiv dword 10 dup (30,31,32,33,34,35,36,37,38,39)  ; массив 50 чисел
bDiv10 byte 10
N1 db "TestTEStTest"
D1 dword 24
x real8 2.4
y byte 24

.code
start:
  ; сообщение в консоли ассемблирования:
Fix <EXAMPLE OF VKDEBUG>
Fix <++++++++++++++++++>
Fix <++++++++++++++++++>

PrintText "Кононенко Дмситрий"
PrintLine
PrintDouble x
PrintDec y

mov ecx, 0
.while ecx <= 9
  mov ebx, massiv[ecx*4]
  PrintDec ebx
  inc ecx
.endw

DumpMem offset massiv, 50, "дамп памяти:"

TrapException offset metka
mov eax, 10000
div bDiv10

metka:
  PrintDec D1
  PrintHex D1
StopSpy

invoke ExitProcess, 0
end start
