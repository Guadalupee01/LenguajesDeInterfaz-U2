; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: Hola Mundo con Irvine32
; Descripción: Imprime un mensaje en pantalla usando la libreria de Irvine.

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    mensaje BYTE "Hola Mundo con Irvine32", 0Dh, 0Ah, 0

.code
main PROC
    ; carga el atributo
    mov edx, OFFSET mensaje
    
    ; imprime
    call WriteString

    exit
main ENDP
END main