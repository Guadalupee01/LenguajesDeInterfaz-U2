; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 6.1 Control de Ocupacion de un Estacionamiento

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    menu BYTE "--- ESTACIONAMIENTO (Max 5 autos) ---", 13, 10
         BYTE "1. Entra auto | 2. Sale auto | 3. Salir", 13, 10
         BYTE "Selecciona opcion: ", 0
    msgAutos BYTE "Autos actualmente adentro: ", 0
    msgLleno BYTE "ALERTA: Estacionamiento lleno, no pueden entrar mas.", 0
    msgVacio BYTE "ALERTA: El estacionamiento ya esta vacio (0 autos).", 0
    ocupacion DWORD 0

.code
main PROC
; el ciclo
MenuLoop:
    call Crlf
    ; imprime
    mov edx, OFFSET menu
    call WriteString
    call ReadInt

    cmp eax, 1
    je Entrada
    cmp eax, 2
    je Salida
    cmp eax, 3
    je SalirPrograma
    jmp MenuLoop

Entrada:
    cmp ocupacion, 5
    jae EstaLleno
    inc ocupacion
    jmp MostrarConteo

EstaLleno:
    ; imprime
    mov edx, OFFSET msgLleno
    call WriteString
    call Crlf
    jmp MostrarConteo

Salida:
    cmp ocupacion, 0
    je EstaVacio
    dec ocupacion
    jmp MostrarConteo

EstaVacio:
    ; imprime
    mov edx, OFFSET msgVacio
    call WriteString
    call Crlf

MostrarConteo:
    ; imprime
    mov edx, OFFSET msgAutos
    call WriteString
    mov eax, ocupacion
    call WriteDec
    call Crlf
    jmp MenuLoop

SalirPrograma:
    exit
main ENDP
END main