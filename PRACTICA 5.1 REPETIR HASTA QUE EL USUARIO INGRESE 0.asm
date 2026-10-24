; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 5.1 Repetir hasta que el usuario ingrese 0

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    pideNum BYTE "Ingresa un numero cualquiera (Ingresa 0 para terminar): ", 0
    msgEco BYTE "Numero registrado: ", 0
    msgFin BYTE "Ingresaste 0. Cerrando programa...", 0

.code
main PROC
; el ciclo
CicloCentinela:
    ; imprime
    mov edx, OFFSET pideNum
    call WriteString
    call ReadInt

    cmp eax, 0
    je Salir

    ; imprime
    mov edx, OFFSET msgEco
    call WriteString
    call WriteInt
    call Crlf
    jmp CicloCentinela

Salir:
    ; imprime
    mov edx, OFFSET msgFin
    call WriteString
    call Crlf
    exit
main ENDP
END main