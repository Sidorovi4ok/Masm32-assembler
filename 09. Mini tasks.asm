
include \masm32\include\masm32rt.inc
include <\masm32\include\debug.inc>
includelib <\masm32\lib\debug.lib>

.data

a dd 5
b dd 10
j dd 7
d dd 4
e dd 11
f dd 2
g dd 3

;---------------------------------------------

massiv dd 5,4,1,1,1,1,1,1,6,7,70,80,3,2,1,1,1,1
N dd 18
res dd 0

.code

; Çàäàíèå 1 - âû÷èñëèòü ìàòåìàòè÷åñêîå âûðàæåíèå
; Âàðèàíò: ¹11: abj — de/fg;

        NUM1 PROC

mov eax,0
mov ebx,0
mov ecx,0
mov edx,0
mov esi,0
mov edi,0

    mov eax, a
    mov ebx, b
    mov ecx, j

        imul ebx
        imul ecx

             PrintDec eax

                 mov esi,eax

                    PrintDec esi ;;;;;;;;;;; abj

mov eax,0
mov ebx,0
mov ecx,0

    mov eax, d
    mov ebx, e

        imul ebx

            PrintDec eax

                mov edi,eax

                    PrintDec edi ;;;;;;;;;; de

mov eax,0
mov ebx,0
mov ecx,0

    mov eax, f
    mov ebx, g

        imul ebx

            PrintDec eax

                mov ecx,eax

                    PrintDec ecx ;;;;;;;;;; fg

    ;Ðåøåíèå âûðàæåíèÿ

mov eax,0
mov ebx,0

    mov eax, edi
    mov ebx, ecx

        div ebx

PrintText "Öåëîå ÷èñëî ïðè äåëåíèè"

            PrintDec eax ;;;;;; de/fg

PrintText "Îñòàòîê ïðè äåëåíèè"

            PrintDec edx ;îñòàòîê

mov ebx, eax
mov eax, esi

    sub eax, ebx

PrintText "Ðåçóëüòàò ðåøåíèÿ âûðàæåíèÿ abj — de/fg"

         PrintDec eax

PrintLine

       ret
            NUM1 ENDP

;-------------------------------------------

; Çàäàíèå 2 - ìàññèâ
; Âàðèàíò: ¹11 Çàäàí ìàññèâ À ñ ÷èñëîì ýëåìåíòîâ áîëüøå 8. 
;               Íàïèñàòü ïðîãðàììó îïðåäåëåíèÿ ñóììû ýëåìåíòîâ ìàññèâà À, äëÿ êîòîðûõ áèòû 2 è 10 ñîâïàäàþò.

    NUM2 PROC

mov eax,0
mov ebx,0
mov ecx,0
mov edx,0
mov esi,0
mov edi,0

    mov ecx, N

    lea ebx, massiv

        a0:

            mov eax,[ebx]

                bt eax,2 ;âûäåëÿåì 2-îé áèò èç eax (çíà÷åíèå çàïèñûâàåòñÿ âî ôëàã CF)
    
                    jc a1

                    jnc a2

        a1:

                bt eax, 10

                    jc a3 
    
                    jnc K 

        a2:
                bt eax, 10

                    jnc a3 

                    jc K

        a3: 
            add res,eax 

        K: 
            add ebx,type massiv
            dec ecx
            jnz a0

PrintText "Âûâîä ñóììû ýëåìåíòîâ ìàññèâà ó êîòîðûõ ñîâïàäàþò 2 è 10 áèò"
PrintDec res

ret
    NUM2 ENDP

;-------------------------------------------

start:

call NUM1

call NUM2


invoke ExitProcess, 0
end start
