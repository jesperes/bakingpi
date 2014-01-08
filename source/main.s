.section .init
.globl _start
_start:
	ldr r0,=0x2020000	@ load GPIO controller address into R0
	mov r1,#1
	lsl r1,#18 		@ 
	str r1,[r0,#4]		@ set the 16th GPIO pin (enables LED)
	mov r1,#1
	lsl r1,#16
	str r1,[r0,#40]
loop$:
	b loop$

