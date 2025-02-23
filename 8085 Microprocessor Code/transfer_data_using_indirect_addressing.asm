; Write a program to transfer 1 data byte from a memory location address 9000H to another location address 9500H using indirect addressing mode.

LXI H, 9000H      ; Load the immediate value 9000H to the register pair (H, L)
MOV A, M          ; Move the value of register M to register A
LXI H, 9500H      ; Load the immediate value 9500H to the register pair (H, L)
MOV M, A          ; Move the value of register A to register M
RST 1             ; Reset the program

; End of code
