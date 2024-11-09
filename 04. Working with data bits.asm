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
_res1 dword 0
Num03 dd 45678
n1 dd 0ABBAh
n2 dd 0FAF4h

.code
start:

PrintLine

mov eax,0FFFFh
PrintHex eax
and eax, 10101010101010101010101010101010b
PrintHex eax

PrintLine

mov ebx,0a74h
mov ecx, 01010101010101010101010101010101b
PrintHex ebx                              
PrintHex ecx

PrintLine

or ebx,ecx
PrintHex ebx
PrintHex ecx

PrintLine

PrintHex Num03
xor Num03, 11111111000001001010100101111000b 
PrintHex Num03

PrintLine

PrintHex n1
PrintHex n2
mov eax,n1
xor eax,n2
PrintHex eax

invoke ExitProcess, 0
END start
