# Author: Coleton Watt
# Date: Sept 19 2022
# Description: Equation stuff

.data

msg: .ascii "Caculating the result fo x = 20+y + (-30)\n"
	.asciiz "If the value of y = 18\n"
	
result: .asciiz "The Value of x is:"


.text
	li $v0, 4
	la $a0, msg
	syscall
	
	#caculate value of x=20+y+30
	#what is X? y = 18, $t0 for y
	li $t0, 18      #y = 18
	addi $t1, $t0, 20   # t1 = t0 + 20
	subi $t2, $t1, 30   #t2 = t1 - 30
	
	move $s0, $t2  #save the result 
	
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	move $a0, $s0 #copies reslut from $s0
	syscall 

	li $v0, 10# exit
	syscall 