; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 11. Operaciones Logicas

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    msgAnd BYTE "Resultado AND (Enmascarar bits): ", 0
    msgOr  BYTE "Resultado OR  (Encender bits):   ", 0
    msgXor BYTE "Resultado XOR (Limpiar a cero):  ", 0

.code
main PROC
    mov eax, 10101111b
    and eax, 00001111b
    ; imprime
    mov edx, OFFSET msgAnd
    call WriteString
    call WriteDec
    call Crlf

    mov eax, 11110000b
    or  eax, 00001111b
    ; imprime
    mov edx, OFFSET msgOr
    call WriteString
    call WriteDec
    call Crlf

    mov eax, 9999
    xor eax, eax
    ; imprime
    mov edx, OFFSET msgXor
    call WriteString
    call WriteDec
    call Crlf

    exit
main ENDP
END main