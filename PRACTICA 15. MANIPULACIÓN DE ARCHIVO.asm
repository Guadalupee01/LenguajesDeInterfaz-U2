; Materia: Lenguajes de Interfaz
; Alumno: Jesús Guadalupe Flores Beltrán
; Horario: 10:00 - 11:00
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 15. Manipulación de archivo

INCLUDE Irvine32.inc

.data
    ; aqui estan los atributos
    nombreArchivo BYTE "Inventario.txt", 0
    texto BYTE "125", 0
    archivoHandle DWORD ?

    mensajeExito BYTE "Archivo guardado.", 0
    mensajeError BYTE "No se pudo guardar el archivo.", 0

.code
main PROC
    ; crea el archivo txt
    mov edx, OFFSET nombreArchivo
    call CreateOutputFile

    cmp eax, INVALID_HANDLE_VALUE
    je error
    
    mov archivoHandle, eax

    ; escribe los caracteres
    mov eax, archivoHandle
    mov edx, OFFSET texto
    mov ecx, SIZEOF texto - 1
    call WriteToFile

    jc errorEscritura

    cmp eax, SIZEOF texto - 1
    jne error

    ; cierra el archivo
    mov eax, archivoHandle 
    call CloseFile

    test eax, eax
    jz error

    ; imprime exito
    mov edx, OFFSET mensajeExito
    call WriteString
    jmp fin

errorEscritura:
    mov eax, archivoHandle
    call CloseFile
error:
    ; imprime error
    mov edx, OFFSET mensajeError
    call WriteString
fin:
    exit
main ENDP
END main