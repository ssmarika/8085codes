	MVI C,03
	LXI H,2000
	MOV B,M
	MOV D,M
	INX H
J3:	MOV A,M
	CMP B
	JNC J1
	MOV B,A
J1:	CMP D
	JC J2
	MOV D,A
J2:	INX H
	DCR C
	JNZ J3
	MOV A,B
	STA 3000
	MOV A,D
	STA 4000
	HLT
	

#ORG 2000
#DB 44,99,84,02
