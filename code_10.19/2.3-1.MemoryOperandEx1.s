.text 				# text section
.globl main			# call main by SPIM

# g = h + A[8];

main:	la  $s3, value	      # $s3 = &A[0]
	lw  $t0, 32($s3)	  # t0=A[8]
	li  $s2, 1            # h=1
	add $s1, $s2, $t0	  # g=h+A[8]=1+9=10
        jr $ra

.data				# data section

value:	.word 1, 2, 3, 4, 5, 6, 7, 8, 9     	# data for addition
