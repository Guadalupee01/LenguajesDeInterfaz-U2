; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 8. Operaciones Aritmeticas

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    msgSuma BYTE "15 + 5 = ", 0
    msgResta BYTE "20 - 8 = ", 0
    msgMult BYTE "6 * 7 = ", 0
    msgDiv BYTE "50 / 8 -> Cociente: ", 0
    msgRes BYTE " | Residuo: ", 0

.code
main PROC
    mov eax, 15
    add eax, 5
    ; imprime
    mov edx, OFFSET msgSuma
    call WriteString
    call WriteDec
    call Crlf

    mov eax, 20
    sub eax, 8
    ; imprime
    mov edx, OFFSET msgResta
    call WriteString
    call WriteDec
    call Crlf

    mov eax, 6
    mov ebx, 7
    mul ebx
    ; imprime
    mov edx, OFFSET msgMult
    call WriteString
    call WriteDec
    call Crlf

    mov eax, 50
    mov edx, 0
    mov ebx, 8
    div ebx
    
    mov ecx, edx
    ; imprime
    mov edx, OFFSET msgDiv
    call WriteString
    call WriteDec
    
    ; imprime
    mov edx, OFFSET msgRes
    call WriteString
    mov eax, ecx
    call WriteDec
    call Crlf

    exit
main ENDP
END main