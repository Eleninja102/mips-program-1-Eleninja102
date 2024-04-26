# Author: Coleton Watt
# Date: Sept 19 2022
# Description: Work with wordds(4), half-words(2), bytes (1)

.data
	date: .byte 7  #month 0x07
		.byte 4 #day 0x04
		.byte 1776 #year (2 byes) 0x06F0
	
	event: .asciiz "Declaration of Independece for the United State"
	
		
		
		
.text
	lbu $t0, date #load byte value of date[0] 0x07
	lbu $t1, date +1 #get t1 = date[1] 0x04
	lhu $t2, date + 2  #t2 = date[2] 0x06F0
	#load individual bytes
	
	lbu $t3, event  #0x44 'D'
	lbu $t4, event + 13 #0x66 'f'
	
	
	
	

	li $v0, 10 #exit
	syscall