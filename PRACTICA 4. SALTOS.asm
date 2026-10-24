; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 4. Saltos

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    msg1 BYTE "Paso 1: Iniciando programa...", 0
    msgIgnorado BYTE "Este texto NUNCA se va a imprimir por el salto.", 0
    msg2 BYTE "Paso 2: Salto exitoso hacia la etiqueta final.", 0

.code
main PROC
    ; imprime
    mov edx, OFFSET msg1
    call WriteString
    call Crlf

    jmp SaltarCodigo

    ; imprime
    mov edx, OFFSET msgIgnorado
    call WriteString
    call Crlf

SaltarCodigo:
    ; imprime
    mov edx, OFFSET msg2
    call WriteString
    call Crlf

    exit
main ENDP
END main