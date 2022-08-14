# function fibonacci(n)
#  integer a = 1
#    integer b = 0
#    integer t  to 25

#    for i from 1 to n
#        t = a + b
#        b = a
#        a = t
#    return a
.data
   message: .asciiz"After  fibonacci done,the number is : "
.text


main:
   li   $v0, 4        # print the character of the address pointer in the $a0
   la	$a0, message	# point to string in msg
   syscall

    ########################
    # add your code here^^ #
    ########################
   addi $t0, $t0, 0 # a
   addi $t1, $t1, 1 # b
   addi $t2, $t2, 0 # t
   addi $t6, $t6, 4 # n = 25
   addi $t7, $t7, 0 # counter
   
fib:
    
    ########################
    # add your code here^^ #
    ########################
    beq $t7, $t6, end
    add $t2, $t0, $t1 # t = a + b
    add $t1, $t0, $zero # b = a
    add $t0, $t2, $zero # a = t
    addi $t7, $t7, 1 # counter ++
    j fib
    
 end: 
    add $a0, $zero, $t0  #temp=a
    li   $v0, 1
    syscall  #print the number  in $a0
    jr $ra # Return address
