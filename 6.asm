include \masm32\include\masm32rt.inc
include <\masm32\include\debug.inc>
includelib <\masm32\lib\debug.lib>
.data
v1 db 11
.code
start:
mov al, v1
shl al, 2
;printf("%d\n", al)
PrintHex al
and al, 0
mov al, v1
shr al, 2
PrintHex al
and al, 0
mov al, v1
sal al, 2
PrintHex al
and al, 0
mov al, v1
sar al, 2
PrintHex al
and al, 0
mov al, v1
rol al, 2
PrintHex al
and al, 0
mov al, v1
ror al, 2
PrintHex al
inkey "Press any key!"
invoke ExitProcess,0 ; выход в Windows
end start
