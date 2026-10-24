; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 4.1 Mayor, Menor o Igual con Entrada del Usuario

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    pide1 BYTE "Ingresa el primer numero: ", 0
    pide2 BYTE "Ingresa el segundo numero: ", 0
    msgMayor BYTE "El primer numero es MAYOR que el segundo.", 0
    msgMenor BYTE "El primer numero es MENOR que el segundo.", 0
    msgIgual BYTE "Ambos numeros son IGUALES.", 0
    num1 SDWORD ?

.code
main PROC
    ; imprime
    mov edx, OFFSET pide1
    call WriteString
    call ReadInt
    mov num1, eax

    ; imprime
    mov edx, OFFSET pide2
    call WriteString
    call ReadInt

    cmp num1, eax
    jg EsMayor
    jl EsMenor
    je SonIguales

EsMayor:
    mov edx, OFFSET msgMayor
    jmp Imprimir

EsMenor:
    mov edx, OFFSET msgMenor
    jmp Imprimir

SonIguales:
    mov edx, OFFSET msgIgual

Imprimir:
    ; imprime
    call WriteString
    call Crlf
    exit
main ENDP
END main