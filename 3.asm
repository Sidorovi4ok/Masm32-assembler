include \masm32\include\masm32rt.inc
.data
N1 dword 11
D1 dword 31052003
.code
start:
    mov eax,N1 
    mov ebx,D1 
    printf("%d\n",eax)
    printf("%d\n",ebx)
inkey " "
invoke ExitProcess,0 ; выход в Windows
end start
