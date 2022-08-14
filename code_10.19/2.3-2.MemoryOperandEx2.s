.text 				# text section
.globl main			# call main by SPIM

main:	
    la $s3, value		
	lw $t0, 32($s3)		# A[8]=9
	addi $s2, $s2, 1    # h=1
	add $t0, $s2, $t0	# t0=h+A[8]=9+1=a 
	sw $t0, 48($s3)     # A[12]<-a
    jr $ra
.data				# data section

value:	.word 1, 2, 3, 4, 5, 6, 7, 8, 9     	# data for addition