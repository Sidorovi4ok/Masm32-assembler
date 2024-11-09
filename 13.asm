.486
.model flat, stdcall
option casemap: none
include /masm32/include/windows.inc
include <\masm32\include\windows.inc>
include <\masm32\include\kernel32.inc>
includelib <\masm32\lib\kernel32.lib>
include <\masm32\include\user32.inc>
includelib <\masm32\lib\user32.lib>
include <\masm32\include\masm32.inc>
includelib <\masm32\lib\masm32.lib>
include <\masm32\include\debug.inc>
includelib <\masm32\lib\debug.lib>
include /masm32/macros/macros.asm
uselib masm32, comctl32, ws2_32

.data

massiv dd 30,-2,10,21,44,5,555,-110,1500,19,-10
n dd 11
cycle dd 0

.code
start:

mov ecx, n
and ebx,0
and eax,0

@2:
cmp eax,massiv[ebx]
jl @1

mov eax, cycle
add cycle, 4

mov eax,massiv[ebx]

@1:
PrintDec eax
add ebx, type massiv
dec ecx
cmp ecx, 0
jne @2

invoke ExitProcess, 0
end start
