; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 7. Validación de Formato

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    pideChar BYTE "Presiona una tecla para validar si es digito (0-9): ", 0
    msgValido BYTE " -> FORMATO CORRECTO: Es un digito numerico.", 0
    msgInvalido BYTE " -> ERROR DE FORMATO: No es un numero.", 0

.code
main PROC
    ; imprime
    mov edx, OFFSET pideChar
    call WriteString
    
    call ReadChar
    call WriteChar

    cmp al, '0'
    jb Invalido
    cmp al, '9'
    ja Invalido

    ; imprime
    mov edx, OFFSET msgValido
    call WriteString
    jmp Terminar

Invalido:
    ; imprime
    mov edx, OFFSET msgInvalido
    call WriteString

Terminar:
    call Crlf
    exit
main ENDP
END main