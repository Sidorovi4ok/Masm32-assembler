include \masm32\include\masm32rt.inc
include <\masm32\include\debug.inc>
includelib <\masm32\lib\debug.lib>

.data
 
mas db 23,4,5,67,5,6,7,99,67,8,9,23,87,9,0,8
i db 0 ;столбец
j db 0 ;строка
el_size db 1

.code
start:

mov eax,0
mov ebx,0
mov edx,0
mov ecx,0
mov esi,0
mov edi,0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov al, 4
   mul el_size
   mul i

     mov esi, eax ;4*el_size*i

        PrintDec esi

            xor eax,eax
            mov al,j
             mul el_size

                movzx edi,ax ;

                    PrintDec edi

mov al,mas[esi][edi] 

    movzx eax, al

PrintDec eax

mov edx,eax              ;;;;;;;;;;;;;;;;;;;;;;;Первый(нулевой) элемент массива

    mov ecx,3
    inc j

@a1:

cmp ecx,0
je @a2

   mov al, 4
   mul el_size
   mul i

     mov esi, eax ;4*el_size*i

        PrintDec esi

            xor eax,eax
            mov al,j
             mul el_size

                movzx edi,ax ;

                    PrintDec edi

mov al,mas[esi][edi] 

        movzx eax, al

           ;PrintDec eax

 
    cmp edx,eax
    jl @a3

    inc j
    dec ecx
    jmp @a1

             @a3:

                mov edx,eax
                inc j
                dec ecx
                jmp @a1

@a2:

PrintDec edx

                    inc i

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    mov ecx,4
    mov j,0

@b1:

cmp ecx,0
je @b2

   mov al, 4
   mul el_size
   mul i

     mov esi, eax ;4*el_size*i

        PrintDec esi

            xor eax,eax
            mov al,j
             mul el_size

                movzx edi,ax ;

                    PrintDec edi

mov al,mas[esi][edi] 

        movzx eax, al

           ;PrintDec eax

 
    cmp edx,eax
    jl @b3

    inc j
    dec ecx
    jmp @b1

             @b3:

                mov edx,eax
                inc j
                dec ecx
                jmp @b1

@b2:

PrintDec edx

                    inc i

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   mov ecx,4
    mov j,0

@c1:

cmp ecx,0
je @c2

   mov al, 4
   mul el_size
   mul i

     mov esi, eax ;4*el_size*i

        PrintDec esi

            xor eax,eax
            mov al,j
             mul el_size

                movzx edi,ax ;

                    PrintDec edi

mov al,mas[esi][edi] 

        movzx eax, al

           ;PrintDec eax

 
    cmp edx,eax
    jl @c3

    inc j
    dec ecx
    jmp @c1

             @c3:

                mov edx,eax
                inc j
                dec ecx
                jmp @c1
@c2:

PrintDec edx 

        inc i

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   mov ecx,4
    mov j,0

@d1:

cmp ecx,0
je @d2

   mov al, 4
   mul el_size
   mul i

     mov esi, eax ;4*el_size*i

        PrintDec esi

            xor eax,eax
            mov al,j
             mul el_size

                movzx edi,ax ;

                    PrintDec edi

mov al,mas[esi][edi] 

        movzx eax, al

           ;PrintDec eax

 
    cmp edx,eax
    jl @d3

    inc j
    dec ecx
    jmp @d1

             @d3:

                mov edx,eax
                inc j
                dec ecx
                jmp @c1
@d2:

PrintDec edx 

PrintText "Максимальный элемент массива: "
PrintDec edx

inkey " "
invoke ExitProcess, 0
end start
