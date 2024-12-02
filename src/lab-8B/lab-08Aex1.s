.global _start
.data
result: .skip 40           
.text
_start:
    MOV R0, #0 
    MOV R1, #0
    LDR R6, =result 
loop:
    STR R1, [R6], #4  
    ADD R1, R1, #2
    ADD R0, R0, #1
    CMP R0, #10
    BLT loop 
    MOV R7, #1 
    SVC #0
