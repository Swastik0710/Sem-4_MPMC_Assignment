; Write a program to determine 2's complement of the contents of memory location 9500H. Store the result in memory location 9600 H.

MOV DPTR, #9500H      ; Load DPTR with address value 9500H (source address)
MOVX A, @DPTR         ; Move the external memory content at 9500H into the accumulator (A)
CPL A                 ; Complement the accumulator(A) {Take 1's complement of accumulator A}
INC A                 ; Increment the accumulator (A) {Add 1 to get 2's complement}
MOV DPTR, #9600H      ; Load DPTR with address value 9600H (destination address)
MOVX @DPTR, A         ; Move the external memory content of the accumulator (A) to the internal memory location pointed by DPTR
LCALL 00BBH           ; Call a subroutine located at memory address 00BBH

; End of code
