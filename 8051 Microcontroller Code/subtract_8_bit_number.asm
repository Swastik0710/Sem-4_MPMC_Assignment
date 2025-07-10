; Write a program to subtract an 8-bit number stored in register R5 from another number stored in register R6. Store the result in internal memory location 6FH.

MOV R5, #20H      ; Load the value 20H tO register R5 {R5 = 20H}
MOV R6, #30H      ; Load the value 30H tO register R6 {R6 = 30H}
MOV A, R6         ; Move the content of register R6 to the accumulator (A) {A = 30H}
SUBB A, R5        ; Subtract the content of R5 with the content of the accumulator (A) 
MOV 6FH, A        ; Move the content of the accumulator (A) to the memory location 6FH
LCALL 00BBH       ; Call a subroutine located at memory address 00BBH

; End of code
