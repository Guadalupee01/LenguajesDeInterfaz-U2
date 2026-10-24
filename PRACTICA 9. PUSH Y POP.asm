; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 9. PUSH Y POP

INCLUDE Irvine32.inc

.code
main PROC
    ; bloque 1
    mov eax, 500
    push eax
    nop

    mov eax, 0
    pop ebx
    nop

    ; bloque 2
    mov eax, 10
    push eax
    mov eax, 20
    push eax
    mov eax, 30
    push eax
    nop

    pop eax
    pop ebx
    pop ecx
    nop

    ; bloque 3
    mov eax, 100
    mov ebx, 200
    push eax
    push ebx

    mov eax, 999
    mov ebx, 888

    pop ebx
    pop eax

    ; bloque 4
    mov eax, 50 
    mov ebx, 666
    call aumentarDiez
    nop

    exit                    
main ENDP

aumentarDiez PROC
    nop
    push ebx
    nop

    mov ebx, 10
    add eax, ebx
    nop

    pop ebx
    nop
    ret
aumentarDiez ENDP 

END main