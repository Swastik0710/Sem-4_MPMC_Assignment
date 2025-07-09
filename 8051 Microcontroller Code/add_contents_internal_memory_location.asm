; Write a program to copy the contents of internal memory location pointed by R1 register to internal data memory location pointed by R0. Add the content of register R0 with the content of register R5. Store the sum into register R2.

MOV R1, #50H      ; Load the value 50H tO register R1 {R1 = 50H}
MOV R0, #40H      ; Load the value 40H tO register R0 {R0 = 40H}
MOV A, @R1        ; Move the content of internal memory location pointed by R1 to the accumulator (A)
MOV @R0, A        ; Move the content of the accumulator (A) to the internal memory location pointed by R0
MOV R5, #20H      ; Load the value 20H tO register R5 {R5 = 20H}
ADD A, R5         ; Add the content of R5 with the content of the accumulator (A)  
MOV R2, A         ; Move the content of the accumulator (A) to register R2
LCALL 00BBH       ; Call a subroutine located at memory address 00BBH

; End of code
