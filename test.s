		addi $a3, $zero, 10
loop: 	addi $a0, $a0, 1
		beq $a0, $a3, next_loop
		beq $a0, $a0, loop
next_loop:	addi $a0, $a0, 1
		sw $a0, 0x0($zero)
		beq $a0, $a3, end
		beq $zero, $zero, next_loop
end:	halt
