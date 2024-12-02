.global _start
_start:
	MOV R0 , #10
	MOV R1 , #0x20000000 
	STR R0 , [R1]