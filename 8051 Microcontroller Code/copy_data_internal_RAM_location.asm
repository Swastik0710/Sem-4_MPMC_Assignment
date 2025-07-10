; Write a program to copy data from internal RAM location 50H to the internal RAM location 60H. Assume the size of the array is 10 byte.
; Data: 01H, 02H, 03H, 04H, 05H, 06H, 07H, 08H, 09H, 0AH

MOV R0, #50H      ; Load the value 50H to register R0 {R0 = 50H}
MOV R1, #60H      ; Load the value 60H to register R1 {R1 = 60H}
MOV R2, #0AH      ; Load the value 0AH to register R2 {R2 = 0AH}
MOV A, @R0        ; Move the content of internal memory location pointed by R0 to the accumulator (A)
MOV @R1, A        ; Move the content of the accumulator (A) to the internal memory location pointed by R1
INC R0            ; Increment register R0
INC R1            ; Increment register R1
DJNZ R2, 8006H    ; Decrement R2 and jump to label 8006H if R2 ≠ 0 (loop until 10 bytes are copied)
LCALL 00BBH       ; Call a subroutine located at memory address 00BBH

; End of code
