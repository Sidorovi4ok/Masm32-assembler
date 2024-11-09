include \masm32\include\masm32rt.inc
include <\masm32\include\debug.inc>
includelib <\masm32\lib\debug.lib>

.data

_text db "alibabamoshka",0,13,10
_numchar db "Number of characters per line",0

_textwork db "golova     ",0,13,10

_textBig db "genius",0,13,10

_textSmall db "DIVNOMORSK",0,13,10

.code
start: 
;;;;;;;;;;;;;;;;;;;;;;;;; ---- высчитываем длину строки
mov ecx, offset _text

@cycle1a:
Cmp byte ptr [ecx], 0 
je @cycle1b 
inc ecx
jmp @cycle1a
@cycle1b: 

Sub ecx, offset _text

PrintText " оличество символов в строке"
PrintDec ecx

;;;;;;;;;;;;;;;;;;;;;;;;; ---- вырезаем пробелы в конце
mov ecx,0

mov ecx, offset _textwork

@cycle2a:
Cmp byte ptr [ecx], 0
Je @cycle2b
inc ecx
Jmp @cycle2a
@cycle2b:

Dec ecx

Cmp byte ptr [ecx], ' '
Je @cycle2b
Inc ecx
Mov byte ptr [ecx], 0

Sub ecx, offset _textwork

PrintText " оличество символов в строке после обрезани¤ пробелов"
PrintDec ecx

;;;;;;;;;;;;;;;;;;;;;;;;;;; ---- малые английские переделать в большие


mov ecx,0

Mov ecx, offset _textBig

@1: 
                               
Cmp byte ptr [ecx], 0
Je @2 

Cmp byte ptr [ecx], 97
JL @3 

Cmp byte ptr [ecx], 122
JG @3 

SUB byte ptr [ecx], 32

@3:

Inc ecx 
Jmp @1 

@2: 

print offset _textBig,10
;;;;;;;;;;;;;;;;;;;;;;;;;; ---- большие английские переделать в маленькие

mov ecx,0

Mov ecx, offset _textSmall

@5: 
                               
Cmp byte ptr [ecx], 0
Je @6 

Cmp byte ptr [ecx], 65
JL @7 

Cmp byte ptr [ecx], 90
JG @7 

SUB byte ptr [ecx], -32

@7:

Inc ecx
Jmp @5 

@6: 

print offset _textSmall















inkey " "
invoke ExitProcess, 0
end start
