; Write a program to exchange content of register R2 with the content of the accumulator (A) using other registers.

MOV A, #11H      ; Load the value 11H to the accumulator (A) {A = 11H}
MOV R2, #22H     ; Load the value 22H to register R2 {R2 = 22H}
MOV R5, A        ; Move the content of the accumulator (A) to register R5 {R5 = 11H}
MOV A, R2        ; Move the content of register R2 to the accumulator (A) {A = 22H}
MOV R6, A        ; Move the content of the accumulator (A) to register R6 {R6 = 22H}
MOV A, R5        ; Move the content of register R5 to the accumulator (A) {A = 11H}
MOV R2, A        ; Move the content of the accumulator (A) to register R2 {R2 = 11H}
MOV A, R6        ; Move the content of register R6 to the accumulator (A) {A = 22H}
LCALL 00BBH      ; Call a subroutine located at memory address 00BBH

; End of code
