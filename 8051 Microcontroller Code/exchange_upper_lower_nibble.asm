; Write a program to exchange the upper and lower nibble of location 50H.

; Method 1:

MOV R0, #50H      ; Load the value 50H to register R0 {R0 = 50H}
MOV A, @R0        ; Move the content of internal memory location pointed by R0 to the accumulator (A)
SWAP A            ; Swap the upper and lower nibbles of the data stored in the accumulator (A)
MOV @R0, A        ; Move the content of the accumulator (A) to the internal memory location pointed by R0
LCALL 00BBH       ; Call a subroutine located at memory address 00BBH

; End of code

; Method 2:

MOV A, 50H        ; Load the content of internal memory location 50H into the accumulator (A)
SWAP A            ; Swap the upper and lower nibbles of the data stored in the accumulator (A)
MOV 50H, A        ; Store the modified content of the accumulator (A) back to internal memory location 50H
LCALL 00BBH       ; Call a subroutine located at memory address 00BBH

; End of code
