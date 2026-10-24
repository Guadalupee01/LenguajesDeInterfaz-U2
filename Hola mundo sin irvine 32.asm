; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: Hola Mundo
; Descripción: Imprime un mensaje en consola.

.386
.model flat, stdcall
.stack 4096

; Funciones nativas de Windows
ExitProcess PROTO, dwExitCode:DWORD
GetStdHandle PROTO, nStdHandle:DWORD
WriteConsoleA PROTO, hConsoleOutput:DWORD, lpBuffer:PTR BYTE, nNumberOfCharsToWrite:DWORD, lpNumberOfCharsWritten:PTR DWORD, lpReserved:DWORD

.data
    ; Aqui estan los atributos
    STD_OUTPUT_HANDLE   EQU -11
    mensaje             BYTE "Hola, Mundo!", 0Dh, 0Ah
    longitudMensaje     EQU $ - mensaje
    bytesEscritos       DWORD ?
    hStdOut             DWORD ?

.code
main PROC
    ; Obtiene la consola
    INVOKE GetStdHandle, STD_OUTPUT_HANDLE
    mov hStdOut, eax

    ; Imprime el mensaje
    INVOKE WriteConsoleA, hStdOut, ADDR mensaje, longitudMensaje, ADDR bytesEscritos, 0

    ; Termina el programa
    INVOKE ExitProcess, 0
main ENDP
END main