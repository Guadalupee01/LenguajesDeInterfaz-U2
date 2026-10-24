; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 13. String Hexadecimal

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    pideHex BYTE "Ingresa una cadena en formato Hexadecimal (ej. 1A3F): ", 0
    msgDec  BYTE "Su valor convertido a Decimal es: ", 0
    msgHex  BYTE "Confirmacion en formato Hexadecimal: ", 0

.code
main PROC
    ; imprime
    mov edx, OFFSET pideHex
    call WriteString
    call ReadHex

    ; imprime
    mov edx, OFFSET msgDec
    call WriteString
    call WriteDec
    call Crlf

    ; imprime
    mov edx, OFFSET msgHex
    call WriteString
    call WriteHex
    call Crlf

    exit
main ENDP
END main