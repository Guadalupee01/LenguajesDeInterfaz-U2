; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 10. Cadena con Decimal

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    texto1 BYTE "El alumno tiene ", 0
    texto2 BYTE " anos y cursa el semestre ", 0
    edad DWORD 22
    semestre DWORD 5

.code
main PROC
    ; imprime
    mov edx, OFFSET texto1
    call WriteString

    mov eax, edad
    call WriteDec

    ; imprime
    mov edx, OFFSET texto2
    call WriteString

    mov eax, semestre
    call WriteDec
    call Crlf

    exit
main ENDP
END main