# Author: Coleton Watt
# Date: Sept 19 2022
# Description: A program that adds two numbers

# Registers used:
#	$v0		- syscall parameter and return value
#	$a0		- syscall paremeter: the string to print
#   $t0 	- used to hold the first number.
#   $t1 	- used to hold the second number.
#   $t2 	- used to hold the sum of $t0 and $t1.

# Data for the program goes here
.data
name: .asciiz "Coleton Watt\n"
hw: .asciiz "Programming Assignment #1\n"
info: .asciiz "A program that substract two numbers\n"
question1: .asciiz "Please enter a number: \n" 

diff: .asciiz "\nThe difference is: " 
diff2: .asciiz "\nThe new difference after substracting 20 is: " 

# Code goes here
.text
main:
	#TASK ONE
	li $v0, 4 #load immediate value type string
	la $a0, name #loads name unto a0 register to print
	syscall #execute
	li $v0, 4 #load immediate value type string
	la $a0, hw #loads homework unto a0 register to print
	syscall #execute
	li $v0, 4 #load immediate value type string
	la $a0, info #loads info unto a0 register to print
	syscall #execute
	
	#TASK TWO
	#first number
	li $v0, 4 #load immediate value type string
	la $a0, question1 #loads question to ask unto a0 register to print
	syscall #execute
	
	li $v0, 5 #interger read 
	syscall #execute read command and stores value in $v0
	#abs $t0, $v0 #adds absolute value of $v0 to $t0
	add $t0, $v0, $zero #adds value of $v0 to $t0 and adds zero can also be '0'
	
	#second number
	li $v0, 4 #load immediate value type string
	la $a0, question1 #loads question to ask unto a0 register to print
	syscall #execute
	
	li $v0, 5 #interger read 
	syscall #execute read command and stores value in $v0
	add $t1, $v0, $zero #adds value of $v0 to $t0 and adds zero can also be '0'
	
	sub $t2, $t0, $t1 #subtracts $t0 - $t1 and tsores in $t2
	
	li $v0, 4 #load immediate value type string
	la $a0, diff #prints and prepares for output
	syscall #execute
	li $v0, 1
	move $a0, $t2 
	syscall 
	
	#TASK 3
	li $v0, 4 #load immediate value type string
	la $a0, diff2 #prints and prepares for ouput 
	syscall #execute
	
	subi $t3, $t2, 20 #subtracts $t2 - 20
	li $v0, 1
	move $a0, $t3 
	syscall 
	
	#END STATEMENT
	li $v0, 10		# 10 is the exit program syscall
	syscall			# execute call

## end of ca.asm
