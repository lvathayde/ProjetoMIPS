.data
numero:     .asciiz "012345"
newline:    .asciiz "\n"
x: .asciiz "x"

.text
main:
    la $a0, numero      # Load the address of the string into $a0
    jal calcdigitosete   # Jump to the calcdigitosete function

    # Print the result stored in $v0
    move $a0, $v0        # Load the value to print into $a0
    li $v0, 11            # System call code for print_integer
    syscall

    # Exit program
    li $v0, 10           # System call code for exit
    syscall

calcdigitosete:
    li $t1, 2            # Set $t1 to 2 for the multiplier

    calcdigitosete_loop:
        lb $t2, 0($a0)      # Load the byte from the string
        beqz $t2, calcdigitosete_done  # If null terminator is reached, exit loop
        sub $t2, $t2, 48     # Convert ASCII to integer ('0' has ASCII value 48)
        mul $t2, $t2, $t1   # Multiply the current digit by the multiplier
        add $v0, $v0, $t2   # Add to the result
        addi $a0, $a0, 1    # Move to the next character in the string
        addi $t1, $t1, 1    # Increment the multiplier
        j calcdigitosete_loop

    calcdigitosete_done:
        remu $v0, $v0, 11    # Calculate the result after mod 11, store it in $t3
        beq $v0, 10, calcdigitosete_convert  # If remainder is 10, jump to calcdigitosete_convert
        jr $ra               # Jump to the address stored in $ra

calcdigitosete_convert:
    la $v0, x            # Set $v0 to the desired value (replace X with the value)
    lb $v0,0($v0)
    jr $ra               # Jump to the address stored in $ra
     