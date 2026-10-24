; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 3. Comparación y Prueba

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    msgCmp BYTE "CMP: Los registros EAX y EBX tienen el mismo valor.", 0
    msgTest BYTE "TEST: El bit 0 esta apagado, por lo tanto el numero es PAR.", 0

.code
main PROC
    mov eax, 25
    mov ebx, 25
    cmp eax, ebx
    je Iguales
    jmp PruebaBit

Iguales:
    ; imprime
    mov edx, OFFSET msgCmp
    call WriteString
    call Crlf

PruebaBit:
    mov eax, 8
    test eax, 1
    jz EsPar
    jmp Fin

EsPar:
    ; imprime
    mov edx, OFFSET msgTest
    call WriteString
    call Crlf

Fin:
    exit
main ENDP
END main