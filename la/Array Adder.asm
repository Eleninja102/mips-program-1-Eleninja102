# Author: Coleton Watt
# Date: Sept 19 2022
# Description: add value to array

.data
#numbers to add 
nums: .word -7, 20,-5  #int numb[3] = [-7, 20, -5]
result: .word 0

resultString: .asciiz "Result: "

.text 
	#load into registers
	la $t0, nums
	lw $t1, 0($t0)  #t0 of nums[0[ t0+0
	lw $t2, 4($t0) #t2 = nums [2]
	lw $t3, 8($t0)#t3 = nums [3]
	
	add $a0, $t1, $t2
	add $a0, $a0, $t3
	
	#move $s0, $a0
	
	sw $a0, result
	
	li $v0, 4
	la $a0, resultString
	syscall 
	
	li $v0, 1
	lw $a0, result
	syscall 
	




	li $v0, 10 #exit
	syscall