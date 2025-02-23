; Write a program to transfer 1 data byte from a memory location address 9000H to another location address 9500H using direct addressing mode.

LDA 9000H      ; Load the value from memory location 9000H to the accumulator (A)
STA 9500H      ; Store the value in the memory location 9500H of the accumulator (A) {9500H = value at 9000H}
RST 1          ; Reset the program

; End of code
