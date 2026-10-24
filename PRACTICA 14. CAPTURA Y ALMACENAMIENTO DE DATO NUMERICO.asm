; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 14. Captura y Almacenamiento de Dato Numérico

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    pideDato BYTE "Ingresa un codigo numerico para almacenar en memoria: ", 0
    msgExito BYTE "Dato guardado correctamente en la variable. Valor recuperado: ", 0
    datoGuardado DWORD ?

.code
main PROC
    ; imprime
    mov edx, OFFSET pideDato
    call WriteString
    call ReadInt

    mov datoGuardado, eax

    mov eax, 0

    ; imprime
    mov edx, OFFSET msgExito
    call WriteString
    mov eax, datoGuardado
    call WriteInt
    call Crlf

    exit
main ENDP
END main