	   LXI H,0100
	   LXI D,0200
	   MVI C,05

LOOP1:	   MOV A,M
	   MOV B,A
	   ANI 12
	   CPI 00
	   JZ LOOP
	   CPI 12
	   JZ LOOP
	MOV A,M
	   XRI 12
	   MOV B,A

LOOP:	   MOV A,B
	   STAX D
	   INX D
	   INX H
	   DCR C
	   JNZ LOOP1
	   RST 5
