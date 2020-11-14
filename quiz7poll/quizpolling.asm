	#include<p18f4550.inc>

			org 0x00
			goto start
			org 0x08
			retfie
			org 0x18
			retfie


start		clrf	TRISD,A
			setf	TRISB,A
			clrf	PORTB,A
			setf	PORTD,A
check0		BTFSC	PORTB,0,A
			call	on0
			bsf		PORTD,0,A
check7		BTFSC	PORTB,7,A
			call	on7
			bsf		PORTD,7,A
			BRA		check0
			
			
on0			bcf		PORTD,0,A
			bra		check7

on7			bcf		PORTD,7,A
			bra		check0

			END		