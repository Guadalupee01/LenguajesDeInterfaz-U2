; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 1. Ciclos Numéricos

INCLUDE Irvine32.inc

.code
main PROC
    ; el ciclo
    mov ecx, 10
    mov eax, 1

Ciclo:
    ; imprime
    call WriteDec
    call Crlf
    inc eax
    loop Ciclo

    exit
main ENDP
END main