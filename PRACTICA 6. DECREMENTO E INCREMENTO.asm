; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 6. Decremento e Incremento

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    msgInicial BYTE "Valor inicial: ", 0
    msgInc BYTE "Despues de INC (+1): ", 0
    msgDec BYTE "Despues de dos DEC (-2): ", 0
    numero DWORD 10

.code
main PROC
    ; imprime
    mov edx, OFFSET msgInicial
    call WriteString
    mov eax, numero
    call WriteDec
    call Crlf

    inc numero
    ; imprime
    mov edx, OFFSET msgInc
    call WriteString
    mov eax, numero
    call WriteDec
    call Crlf

    dec numero
    dec numero
    ; imprime
    mov edx, OFFSET msgDec
    call WriteString
    mov eax, numero
    call WriteDec
    call Crlf

    exit
main ENDP
END main