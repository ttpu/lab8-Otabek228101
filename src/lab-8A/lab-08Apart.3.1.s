.global _start
_start:
    MOV R0, #0
    LDR R1, =0x40000000
loop:
    STR R0, [R1], #4
    ADD R0, R0, #1
    CMP R0, #10
    BLT loop
    MOV R7, #1
    SVC #0