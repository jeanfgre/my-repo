; Created: 21/10/2020 13:53:16
; Author : jfgre
.INCLUDE "m328pdef.inc"

.ORG 0x0000
   rjmp start

; Replace with your application code
start:
    LDI R16, 0xFF
	OUT DDRB, R16
LOOP:
	SBI PORTB, 5
	RCALL DELAY
	SBI PORTB, 4
	RCALL DELAY
	RCALL DELAY
	SBI PORTB, 3
	CLR R16
	CLR R17
	RCALL DELAY
	RCALL DELAY
	CBI PORTB, 5
	RCALL DELAY
	CBI PORTB, 4
	RCALL DELAY
	RCALL DELAY
	CBI PORTB, 3
	CLR R16
	CLR R17
	RCALL DELAY
	RCALL DELAY
	RJMP LOOP
DELAY:
	INC R16
	CPI R16, 0xFF
	BRNE DELAY
	CLR R16
	NOP
	INC R17
	CPI R17, 0xFF
	BRNE DELAY
	CLR R16
	;LDI R16, 0xFF
	;OUT PORTB R16
	NOP
	RET
