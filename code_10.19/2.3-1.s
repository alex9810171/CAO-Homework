.text 		# text section
.globl main	# call main by SPIM

main:
	li   $s1, 4 #g
	li   $s2, 5 #h
	li   $s3, 2 #i
	li   $s4, 3 #j		
	add $t0, $s1, $s2
	add $t1, $s3, $s4
	sub $s0, $t0, $t1