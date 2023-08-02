#####################################################################
#
# CSCB58 Winter 2022 Assembly Final Project
# University of Toronto, Scarborough
#
# Student: Name, Student Number, UTorID, official email
#
# Bitmap Display Configuration:
# - Unit width in pixels: 4 (update this as needed)
# - Unit height in pixels: 4 (update this as needed)
# - Display width in pixels: 256 (update this as needed)
# - Display height in pixels: 256 (update this as needed)
# - Base Address for Display: 0x10008000 ($gp)
#
# Which milestones have been reached in this submission?
# (See the assignment handout for descriptions of the milestones)
# - Milestone 1/2/3 (choose the one the applies)
#
# Which approved features have been implemented for milestone 3?
# (See the assignment handout for the list of additional features)
# 1. (fill in the feature, if any)
# 2. (fill in the feature, if any)
# 3. (fill in the feature, if any)
# ... (add more if necessary)
#
# Link to video demonstration for final submission:
# - (insert YouTube / MyMedia / other URL here). Make sure we can view it!
#
# Are you OK with us sharing the video with people outside course staff?
# - yes / no / yes, and please share this project github link as well!
#
# Any additional information that the TA needs to know:
# - (write here, if any)
#
#####################################################################

# Defined Constants
.eqv BASE_ADDRESS 0x10008000
.eqv BASE_ADDRESS_LEN 32768

# Display Measurements
.eqv DISPLAY_WIDTH 256
.eqv DISPLAY_HEIGHT 512
.eqv UNIT_WIDTH 4
.eqv UNIT_HEIGHT 4

# Display Rows and Columns
.eqv DISPLAY_ROWS 128
.eqv DISPLAY_COLUMNS 64

# Color Assets
.eqv BACKGROUND_COLOR 0x343434
.eqv WALL_COLOR 0xffffff

# Character Default Location
.eqv CHARACTER_DEFAULT_LOCATION 24336
.eqv temp 24596
.data 
# Character 
CHARACTER: .word 0x00000000, 0xff3d0238, 0xffa20094, 0xffa20094, 0xffa20094, 0xffe36bf7, 0x00000000, 0x00000000,  0xff3d0238, 0xffa20094, 0xffa20094, 0xff000000, 0xff000000, 0xffa20094, 0xffe36bf7, 0x00000000,  0x00000000, 0xffa20094, 0xff000000, 0xfffafafa, 0xff000000, 0xfffafafa, 0xffa20094, 0x00000000,  0x00000000, 0xffa20094, 0xff000000, 0xff000000, 0xff000000, 0xff000000, 0xffa20094, 0x00000000,  0x00000000, 0xff3d0238, 0xffa20094, 0xffa20094, 0xffe36bf7, 0xffa20094, 0xff3d0238, 0x00000000,  0x00000000, 0x00000000, 0xff3d0238, 0xffa20094, 0xffe36bf7, 0xffa20094, 0x00000000, 0x00000000,  0x00000000, 0x00000000, 0xff3d0238, 0xff3d0238, 0xffa20094, 0xff3d0238, 0x00000000, 0x00000000,  0x00000000, 0x00000000, 0xff3d0238, 0xff3d0238, 0xff3d0238, 0xff3d0238, 0x00000000, 0x00000000
.eqv CHARACTER_LEN 64
CHARACTER_WIDTH: .word 8
CHARACTER_HEIGHT: .word 8
#CHARACTER_BOUNDARIES1: .word 24596, 24600, 24604, 24608, 24612, 24616, 24872, 25128, 25384, 25640, 25896, 26152, 26388, 26392, 26396, 26400, 26404, 26408, 24852, 25108, 25364, 25620, 25876, 26132
CHARACTER_BOUNDARIES: .word 97, 104, 5, 10
.eqv CHARACTER_BOUNDARIES_LEN 24,

# Platform 1 
#PLATFORM1_BOUNDARIES: .word 22032, 22092, 24140, 24080
PLATFORM1_BOUNDARIES: .word 87, 94, 4, 19
.eqv PLATFORM1_BOUNDARIES_LEN 4

# Platform 2
#PLATFORM2_BOUNDARIES: .word 24596, 24600, 24604, 24608, 24612, 24616, 24872, 25128, 25384, 25640, 25896, 26152, 26388, 26392, 26396, 26400, 26404, 26408, 24852, 25108, 25364, 25620, 25876, 26132
PLATFORM2_BOUNDARIES: .word 70, 77, 35, 50
.eqv PLATFORM2_BOUNDARIES_LEN 4

# Platform 3
#PLATFORM3_BOUNDARIES: .word 24596, 24600, 24604, 24608, 24612, 24616, 24872, 25128, 25384, 25640, 25896, 26152, 26388, 26392, 26396, 26400, 26404, 26408, 24852, 25108, 25364, 25620, 25876, 26132
PLATFORM3_BOUNDARIES: .word 53, 60, 4, 19
.eqv PLATFORM3_BOUNDARIES_LEN 4

# Finish
#FINISH_BOUNDARIES: .word 24596, 24600, 24604, 24608, 24612, 24616, 24872, 25128, 25384, 25640, 25896, 26152, 26388, 26392, 26396, 26400, 26404, 26408, 24852, 25108, 25364, 25620, 25876, 26132
FINISH_BOUNDARIES: .word 45, 51, 7, 11
.eqv FINSIH_BOUNDARIES_LEN 4

newline: .asciiz "\n"

.globl main
.text
# ------------------------------------
#	REGISTER MAPPINGS
# ------------------------------------
#	ROW/CULUMN CALCULATION
# $t8 - Current Pixel Location
# $t9 -	Display Width
# ------------------------------------
#	DRAWING LAYOUT
# $t0 - Location  of Pixel
# $t1 - Destination of Pixel
# $t2  -  Color
# ------------------------------------
main:	
	# ------------------------------------
	# Clear screen
	jal clear
	# ------------------------------------
	# Draw layout 
	jal paint_background
	jal paint_walls
	# ------------------------------------
	# Initialize Boundaries
	# 
	# ------------------------------------
	# Draw Character
	#jal draw_character
	la  $s0, CHARACTER_BOUNDARIES
	jal print_boundary
	
	#la  $s0, CHARACTER_BOUNDARIES1
	#li $t1, CHARACTER_BOUNDARIES_LEN
	#addi $sp, $sp, 4
	#sw $t1, 0($sp)
	#jal print_boundary1
	
	la  $s0, PLATFORM1_BOUNDARIES
	#li $t1, PLATFORM1_BOUNDARIES_LEN 
	#addi $sp, $sp, 4
	#sw $t1, 0($sp)
	jal print_boundary
	
	la  $s0, PLATFORM2_BOUNDARIES
	#li $t1, PLATFORM1_BOUNDARIES_LEN 
	#addi $sp, $sp, 4
	#sw $t1, 0($sp)
	jal print_boundary
	
	la  $s0, PLATFORM3_BOUNDARIES
	#li $t1, PLATFORM1_BOUNDARIES_LEN 
	#addi $sp, $sp, 4
	#sw $t1, 0($sp)
	jal print_boundary
	
	la  $s0,FINISH_BOUNDARIES
	#li $t1, PLATFORM1_BOUNDARIES_LEN 
	#addi $sp, $sp, 4
	#sw $t1, 0($sp)
	jal print_boundary
	
	# ------------------------------------
	# Player Move
player_move:
	li $t9, 0xffff0000
	lw $t8, 0($t9)
	beq $t8, 1, keypress_happened

keypress_happened:
	lw $t2, 4($t9) # this assumes $t9 is set to 0xfff0000 from before
	beq $t2, 0x61, respond_to_a # ASCII code of 'a' is 0x61 or 97 in decimal
	
	beq $t2, 0x77, respond_to_w # ASCII code of 'a' is 0x61 or 97 in decimal
	
	beq $t2, 0x64, respond_to_d # ASCII code of 'a' is 0x61 or 97 in decimal
	j player_move_end
respond_to_a:
	li $v0, 1
	li $a0, 61
	syscall
	j player_move_end
respond_to_w:
	li $v0, 1
	li $a0, 77
	syscall
	j player_move_end
respond_to_d:
	li $v0, 1
	li $a0, 64
	syscall
	j player_move_end

player_move_end:
	li $v0, 32
	li $a0, 10000 # Wait one second (1000 milliseconds)
	syscall	
	j player_move
	
	
	
		
			
					
	# ------------------------------------
	# End Game
	j end
	# ------------------------------------
	
	
	
	
	
## Boundary Debugger
#print_boundary1:
#	li $t0, BASE_ADDRESS
#	li $t2, WALL_COLOR
#	lw $t3, 0($sp)
#	addi $sp, $sp, 4
#	add $t5, $zero, $zero
#	sll $t3, $t3, 2
	
	
	
	
#print_boundary_loop1:
#	bge $t5, $t3, end_print_boundary
	
	
#	lw $t6, 0($s0)	
#	add $t7, $t0, $t6 
#	sw $t2, ($t7)
	
#	addi $s0, $s0, 4
#	addi $t5, $t5, 4
#	j print_boundary_loop1
	
#end_print_boundary1:
#	jr $ra	
	
print_boundary:
	li $t0, BASE_ADDRESS
	li $t1, WALL_COLOR
	addi $sp, $sp, 4
	sw $ra, 0($sp)
	
	# Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
	
	# Calculate Boundaries
	# Calculate  Top
	# Calc Top Left
	lw $a0, 8($s0)
	lw $a1, 0($s0)
	jal xy_offset
		
	add $t2, $t0, $v0 
	sw $t1, ($t2)
	# Calc Top Right
	lw $a0, 12($s0)
	lw $a1, 0($s0)
	jal xy_offset
		
	add $t2, $t0, $v0 
	sw $t1, ($t2)
	
	# Calculate Bottom
	# Calc Bottom Left
	lw $a0, 8($s0)
	lw $a1, 4($s0)
	jal xy_offset
		
	add $t2, $t0, $v0 
	sw $t1, ($t2)
	# Calc Bottom Right
	lw $a0, 12($s0)
	lw $a1, 4($s0)
	jal xy_offset
		
	add $t2, $t0, $v0 
	sw $t1, ($t2)
	
end_print_boundary:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra			

## Draw Character
#draw_character:
#	addi $sp, $sp, -4
#	sw $ra, 0($sp)		# Stores ra
#	
#	li $t0, BASE_ADDRESS
#	la  $t1, CHARACTER_BOUNDARIES
#	lw $t2, 0($t1)
#	add $t0, $t0, $t2
#	
#	add $t3, $zero, $zero
	
#for_loop1_draw_character:
#	bge $t3, $t2, END
	
	
	
	
	
	# Store 
#	addi $sp, $sp, -4
#	sw $t2, 0($sp)		# Stores Bitmap Pixel Location
	
#	jal pixel_position
#	
	
	
#	li $t3, WALL_COLOR
#	sw $t3, 0($t0)
	
#	lw $ra, 0($sp)		# Stores Column Value
#	addi $sp, $sp, 4
#	jr $ra
	

## Clear the screen.
clear:	li $t0, BASE_ADDRESS
	addi $t1, $t0, BASE_ADDRESS_LEN
	li $t2, BACKGROUND_COLOR
	
clear_loop:
	beq $t0, $t1, clear_end
	
	sw $t2, ($t0)
	
	addi $t0, $t0, 4
	j clear_loop
	
clear_end:
	jr $ra
	
# Draw layout
paint_background:
	li $t0, BASE_ADDRESS
	addi $t1, $t0, 27648
	li $t2, BACKGROUND_COLOR
	
paint_background_loop:
	beq $t0, $t1, paint_background_end
	sw $zero, ($t0)
	addi $t0, $t0, 4
	j paint_background_loop
paint_background_end:
	jr $ra

# Draw Walls
paint_walls:
	li $t0, BASE_ADDRESS
	addi $t1, $t0, 27648
	#addi $t1, $t0, 260
	li $t2, WALL_COLOR
	addi $sp, $sp, -4
	sw $ra, 0($sp)		# Stores ra
	addi $t7, $zero, 0
	
paint_walls_loop:
	beq $t0, $t1, paint_walls_end

	# Store 
	addi $sp, $sp, -4
	sw $t0, 0($sp)		# Stores Bitmap Pixel Location
	
	jal pixel_position
	
	lw $t8, 0($sp)		# Stores Column Value
	addi $sp, $sp, 4
	lw $t9, 0($sp)		# Stores Row Value
	addi $sp, $sp, 4
	

	bge $t9, 4, condition1
	j else_paint_walls_loop
condition1:
	ble $t9, 103, condition2
	j else_paint_walls_loop
condition2:
	bge $t8, 4, condition3
	j else_paint_walls_loop
condition3:
	ble $t8, 59, exit_paint_walls_loop
else_paint_walls_loop:	
	sw $t2, ($t0)
	
exit_paint_walls_loop:
	addi $t0, $t0, 4
	j paint_walls_loop
	
paint_walls_end:
	lw $ra, 0($sp)		# Stores Column Value
	addi $sp, $sp, 4
	jr $ra
# Offset
#xy_offset:
#	# Formula: offset = 4 * (x + (y * DISPLAY_WIDTH))
#	mul $v0, $a1, DISPLAY_WIDTH
#	add $v0, $v0, $a0
#	sll $v0, $v0, 2
#	jr $ra

xy_offset:
	# Formula: offset = 4 * (x + (y * DISPLAY_WIDTH))
	sub $a1, $a1, 1
	mul $v0, $a1, DISPLAY_WIDTH
	mul $a0, $a0, UNIT_WIDTH
	add $v0, $v0, $a0
	jr $ra
	
pixel_position:
	# Formula: BITMAP_LOCATION/DISPLAY_WIDT
	lw $t8, 0($sp)		# Stores Bitmap Pixel Location
	addi $sp, $sp, 4
	sub $t8, $t8, BASE_ADDRESS 
	li $t9, DISPLAY_WIDTH	# Stores Display Width
	div $t8, $t9
	mfhi $t6
	bgt $t6, $zero, increment_row
	j continue_pixel_position
increment_row:
	mflo $t7
	addi $t7, $t7, 1
continue_pixel_position:
	mflo $t7 # Stores Row
	li $t9, UNIT_WIDTH
	div $t6, $t9
	mflo $t6 # Stores Colummn
	addi $sp, $sp, -4
	sw $t7, 0($sp)
	addi $sp, $sp, -4
	sw $t6, 0($sp)
	jr $ra

			
	
	

end:	li $v0, 10
	syscall
