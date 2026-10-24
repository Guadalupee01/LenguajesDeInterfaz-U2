; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 5. Condicionales

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    pideCalif BYTE "Ingresa tu calificacion (0-100): ", 0
    msgAprobado BYTE "Resultado: APROBADO.", 0
    msgReprobado BYTE "Resultado: REPROBADO.", 0

.code
main PROC
    ; imprime
    mov edx, OFFSET pideCalif
    call WriteString
    call ReadInt

    cmp eax, 70
    jge Aprobado

    mov edx, OFFSET msgReprobado
    jmp FinCondicion

Aprobado:
    mov edx, OFFSET msgAprobado

FinCondicion:
    ; imprime
    call WriteString
    call Crlf
    exit
main ENDP
END main