; ; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 12. Desplazamiento y Rotación

INCLUDE Irvine32.inc

.code
main PROC
    ; limpia los registros
    mov eax, 0
    mov ebx, 0
    mov ecx, 0
    mov edx, 0

    ; 1 - SHL : Desplazar a la izquierda
    mov al, 10000000b
    shl al, 1
    call writeBin
    call DumpRegs

    ; 2 - SHR : Desplazar a la derecha
    mov al, 00001101b
    shr al, 1
    call writeBin
    call DumpRegs

    ; 3 - SAR : Conserva el signo
    mov eax, 0
    mov al, -8
    sar al, 1
    call writeBin
    call DumpRegs

    ; 4 - SAR : Operacion no exacta
    mov eax, 0
    mov al, -9
    sar al, 1
    call writeBin
    call DumpRegs

    ; 5 - SHL : Desplazar 2 bits a la izq
    mov eax, 0
    mov al, 00001111b
    shl al, 2
    call writeBin
    call DumpRegs

    ; 6 - SHR : Desplazar 2 bits a la derecha con cl
    mov eax, 0
    mov al, 00001111b
    mov cl, 2
    shr al, cl
    call writeBin
    call DumpRegs

    ; 7 - ROL : Rotar a la izquierda
    mov eax, 0
    mov al, 10000001b
    rol al, 1
    call writeBin
    call DumpRegs

    ; 8 - ROR : Rotar a la derecha
    mov eax, 0
    mov al, 00000001b
    ror al, 1
    call writeBin
    call DumpRegs

    ; 9 - RCL : Rotar por el carry a la izq
    mov eax, 0
    clc                 
    mov al, 10000000b
    rcl al, 1           
    call writeBin
    call DumpRegs

    ; 10 - RCR : Rotar por el carry a la derecha
    mov eax, 0
    stc                 
    mov al, 00000000b
    rcr al, 1           
    call writeBin
    call DumpRegs

    exit
main ENDP
END main