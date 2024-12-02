.global _start
_start:
    LDR R1, =array
    MOV R0, #0 
    MOV R2, #5
loop:
    LDR R3, [R1], #4
    ADD R0, R0, R3
    SUB R2, R2, #1
    CMP R2, #0
    BNE loop
    MOV R7, #1
    SVC #0
.data
array: .word 1, 2, 3, 4, 5
