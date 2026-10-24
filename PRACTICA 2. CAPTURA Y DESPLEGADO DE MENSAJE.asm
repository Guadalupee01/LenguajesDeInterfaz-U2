; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 2. Captura y Desplegado de Mensaje

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    prompt BYTE "Escribe un mensaje o tu nombre: ", 0
    respuesta BYTE "Texto capturado: ", 0
    buffer BYTE 100 DUP(0)

.code
main PROC
    ; imprime
    mov edx, OFFSET prompt
    call WriteString
    
    ; lee el texto
    mov edx, OFFSET buffer
    mov ecx, SIZEOF buffer
    call ReadString

    ; imprime
    mov edx, OFFSET respuesta
    call WriteString
    mov edx, OFFSET buffer
    call WriteString
    call Crlf

    exit
main ENDP
END main