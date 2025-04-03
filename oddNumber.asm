.data
.text
.globl main

main:

    li $a0, 6          

    # Division function (m % 2) using repeated subtraction
    move $t0, $a0         # Copy m to $t0
    li $t1, 2             # Load 2 into $t1 (divisor)
    li $v1, 0             # Initialize remainder in $v1

division_loop:
    blt $t0, $t1, done    # If m < 2 exit loop
    sub $t0, $t0, $t1     # Subtract by 2 and store in m ($t0)
    j division_loop       # Repeat the loop

done:
    move $v1, $t0         # Store remainder in $v1

    # Odd check based on remainder
    beq $v1, $zero, even   # If remainder is 0 it's even jump to even
    li $v0, 0              # If it's odd set $v0 to 0
    j end                  # skip the even part

even:
    li $v0, 1              # If remainder is 0 it's even set $v0 to 1

end:
# The End!!!

