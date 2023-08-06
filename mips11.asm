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
CHARACTER: .word 0xff3d0238, 0xffa20094, 0xffa20094, 0xffa20094, 0xffe36bf7, 0x00000000, -1, 0xffa20094, 0xffa20094, 0xff000000, 0xff000000, 0xffa20094, 0xffe36bf7, -1, 0xffa20094, 0xff000000, 0xfffafafa, 0xff000000, 0xfffafafa, 0xffa20094, -1, 0xffa20094, 0xff000000, 0xff000000, 0xff000000, 0xff000000, 0xffa20094, -1,  0xff3d0238, 0xffa20094, 0xffa20094, 0xffe36bf7, 0xffa20094, 0xff3d0238, -1, 0x00000000, 0xff3d0238, 0xffa20094, 0xffe36bf7, 0xffa20094, 0x00000000, -1, 0x00000000, 0xff3d0238, 0xff3d0238, 0xffa20094, 0xff3d0238, 0x00000000, -1, 0x00000000, 0xff3d0238, 0xff3d0238, 0xff3d0238, 0xff3d0238, 0x00000000, -2
.eqv CHARACTER_LEN 64
CHARACTER_WIDTH: .word 8
CHARACTER_HEIGHT: .word 8
#CHARACTER_BOUNDARIES1: .word 24596, 24600, 24604, 24608, 24612, 24616, 24872, 25128, 25384, 25640, 25896, 26152, 26388, 26392, 26396, 26400, 26404, 26408, 24852, 25108, 25364, 25620, 25876, 26132
CHARACTER_BOUNDARIES: .word 97, 104, 5, 10
.eqv CHARACTER_BOUNDARIES_LEN 24,

# Platform 1 
PLATFORM1: .word 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, -2
PLATFORM1_BOUNDARIES: .word 87, 94, 5, 20
.eqv PLATFORM1_BOUNDARIES_LEN 4

# Platform 2
PLATFORM2: .word 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, -2
PLATFORM2_BOUNDARIES: .word 70, 77, 36, 51
.eqv PLATFORM2_BOUNDARIES_LEN 4

# Platform 3
PLATFORM3: .word 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, 0xff646466, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff1e1e1f, 0xff646466, -1, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, 0xff646466, -2
PLATFORM3_BOUNDARIES: .word 53, 60, 5, 20
.eqv PLATFORM3_BOUNDARIES_LEN 4

# Finish
FINISH: .word 0xffa729a8, 0xffa729a8, 0xffa729a8, 0xffa729a8, 0xffa729a8, -1,  0xffa729a8, 0xff000000, 0xff000000, 0xff000000, 0xffa729a8, -1, 0xffa729a8, 0xff000000, 0xff000000, 0xff000000, 0xffa729a8, -1, 0xffa729a8, 0xff000000, 0xff000000, 0xff000000, 0xffa729a8, -1, 0xffa729a8, 0xff000000, 0xff000000, 0xff000000, 0xffa729a8, -1, 0xffa729a8, 0xff000000, 0xff000000, 0xff000000, 0xffa729a8, -1, 0xffa729a8, 0xffa729a8, 0xffa729a8, 0xffa729a8, 0xffa729a8, -2
FINISH_BOUNDARIES: .word 45, 51, 8, 12
.eqv FINSIH_BOUNDARIES_LEN 4

# Enemy
ENEMY_BULLETS: .word 6, 6, 23, 23

# Enemy
ENEMY: .word 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 1, 1, 0, 1, 1, 1, -2
ENEMY_BOUNDARIES: .word 6, 11, 20, 26

newline: .asciiz "test\n"

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
	# Initialize Game
	# 
    li $s2, 2
    li $s3, 2
    
    li $s4, 1


	# ------------------------------------
	# Draw Character
	#jal draw_character
	#la  $s0, CHARACTER_BOUNDARIES
	#jal print_boundary

	la  $s0, ENEMY_BOUNDARIES
    la  $s1, ENEMY
	jal draw

    la  $s0, CHARACTER_BOUNDARIES
    la  $s1, CHARACTER
	jal draw

	#la  $s0, CHARACTER_BOUNDARIES1
	#li $t1, CHARACTER_BOUNDARIES_LEN
	#addi $sp, $sp, 4
	#sw $t1, 0($sp)
	#jal print_boundary1
	
	la  $s0, PLATFORM1_BOUNDARIES
    la  $s1, PLATFORM1
	#li $t1, PLATFORM1_BOUNDARIES_LEN 
	#addi $sp, $sp, 4
	#sw $t1, 0($sp)
	jal draw
	
	la  $s0, PLATFORM2_BOUNDARIES
    la  $s1, PLATFORM2
	#li $t1, PLATFORM1_BOUNDARIES_LEN 
	#addi $sp, $sp, 4
	#sw $t1, 0($sp)
	jal draw
	
	la  $s0, PLATFORM3_BOUNDARIES
    la  $s1, PLATFORM3
	#li $t1, PLATFORM1_BOUNDARIES_LEN 
	#addi $sp, $sp, 4
	#sw $t1, 0($sp)
	jal draw
	
	la  $s0,FINISH_BOUNDARIES
    la  $s1, FINISH
	#li $t1, PLATFORM1_BOUNDARIES_LEN 
	#addi $sp, $sp, 4
	#sw $t1, 0($sp)
	jal draw
    
    # ------------------------------------
    #
check_reset:
    li $t9, 0xffff0000
	lw $t8, 0($t9)
    beq $t8, 1, reset_happened
    j platform1_move
reset_happened:
	lw $t2, 4($t9) # this assumes $t9 is set to 0xfff0000 from before
	beq $t2, 0x70, reset_game # ASCII code of 'a' is 0x61 or 97 in decimal

    # ------------------------------------
    #
platform1_move:
    la  $s0, PLATFORM1_BOUNDARIES
    la  $s1, PLATFORM1
	jal erase_draw
platform1_check_within_game_screen_horizontal:
	# Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
	lw $t1, 0($s0)
	ble $t1, 4, reset_platform1
platform1_check_within_game_screen_horizontal_condition1:
	lw $t1, 4($s0)
	bgt $t1, 104, reset_platform1
platform1_check_within_game_screen_horizontal_condition2:
	lw $t1, 8($s0)
	add $t1, $t1, $s2
	ble $t1, 4, reset_platform1
platform1_check_within_game_screen_horizontal_condition3:
	lw $t1, 12($s0)
	add $t1, $t1, $s2
	bgt $t1, 59, reset_platform1
	 

platform1_process_down_update:
	# Get Column Start
	# 0($s0)
	# Get Column End
	# 4($s0)
	lw $t1, 8($s0)
	add $t1, $t1, $s2
	sw $t1, 8($s0)
	lw $t1, 12($s0)
	add $t1, $t1, $s2
	sw $t1, 12($s0)	
	
platform1_exit_check_within_game_screen_horizontal:	
	jal draw
    li $v0, 32
	li $a0, 100 # Wait one second (1000 milliseconds)
	syscall

platform2_move:
    la  $s0, PLATFORM2_BOUNDARIES
    la  $s1, PLATFORM2
	jal erase_draw
platform2_check_within_game_screen_horizontal:
	# Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
	lw $t1, 0($s0)
	ble $t1, 4, reset_platform2
platform2_check_within_game_screen_horizontal_condition1:
	lw $t1, 4($s0)
	bgt $t1, 104, reset_platform2
platform2_check_within_game_screen_horizontal_condition2:
	lw $t1, 8($s0)
	add $t1, $t1, $s3
	ble $t1, 4, reset_platform2
platform2_check_within_game_screen_horizontal_condition3:
	lw $t1, 12($s0)
	add $t1, $t1, $s3
	bgt $t1, 59, reset_platform2
	 

platform2_process_down_update:
	# Get Column Start
	# 0($s0)
	# Get Column End
	# 4($s0)
	lw $t1, 8($s0)
	add $t1, $t1, $s3
	sw $t1, 8($s0)
	lw $t1, 12($s0)
	add $t1, $t1, $s3
	sw $t1, 12($s0)	
	
platform2_exit_check_within_game_screen_horizontal:	
	jal draw
    li $v0, 32
	li $a0, 100 # Wait one second (1000 milliseconds)
	syscall

	# ------------------------------------
	# Player Move
player_move:
	li $v0, 32
	li $a0, 200 # Wait one second (1000 milliseconds)
	syscall	
	
	li $t9, 0xffff0000
	lw $t8, 0($t9)
	beq $t8, 1, keypress_happened
	
	
	la  $s0, CHARACTER_BOUNDARIES
	jal erase_draw
	
	li $t9, 0xffff0000
	lw $t8, 0($t9)
	beq $t8, 1, keypress_happened
	
	
check_within_game_screen_down:
	# Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
	lw $t1, 0($s0)
	addi $t1, $t1, 1
	ble $t1, 4, exit_check_within_game_screen_down
check_within_game_screen_down_condition1:
	lw $t1, 4($s0)
	addi $t1, $t1, 1
	bgt $t1, 104, exit_check_within_game_screen_down
check_within_game_screen_down_condition2:
	lw $t1, 8($s0)
	ble $t1, 4, exit_check_within_game_screen_down
check_within_game_screen_down_condition3:
	lw $t1, 12($s0)
	bgt $t1, 59, exit_check_within_game_screen_down
	
	#li $v0, 4
	#la $a0, newline
	#syscall
check_platform1_collision_down:
	
	lw $t1, 0($s0)
	addi $t1, $t1, 1
	
	la $s1, PLATFORM1_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform1_collision_down_condition1
	j check_platform2_collision_down
check_platform1_collision_down_condition1:
	lw $t1, 4($s0)
	addi $t1, $t1, 1
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform1_collision_down_condition2
	j check_platform2_collision_down
check_platform1_collision_down_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform1_collision_down_condition3
	j check_platform2_collision_down
check_platform1_collision_down_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_down
	j check_platform2_collision_down
	
check_platform2_collision_down:
	lw $t1, 0($s0)
	addi $t1, $t1, 1
	
	la $s1, PLATFORM2_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform2_collision_down_condition1
	j check_platform3_collision_down
check_platform2_collision_down_condition1:
	lw $t1, 4($s0)
	addi $t1, $t1, 1
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform2_collision_down_condition2
	j check_platform3_collision_down
check_platform2_collision_down_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform2_collision_down_condition3
	j check_platform3_collision_down
check_platform2_collision_down_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_down
	j check_platform3_collision_down
	

check_platform3_collision_down:
	
	lw $t1, 0($s0)
	addi $t1, $t1, 1
	
	la $s1, PLATFORM3_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform3_collision_down_condition1
	j process_down_update
check_platform3_collision_down_condition1:
	lw $t1, 4($s0)
	addi $t1, $t1, 1
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform3_collision_down_condition2
	j process_down_update
check_platform3_collision_down_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform3_collision_down_condition3
	j process_down_update
check_platform3_collision_down_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_down
	j process_down_update 
	

process_down_update:
	# Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	lw $t1, 0($s0)
	addi $t1, $t1, 1
	sw $t1, 0($s0)
	lw $t1, 4($s0)
	addi $t1, $t1, 1
	sw $t1, 4($s0)	
	
exit_check_within_game_screen_down:	
	#la  $s0, CHARACTER_BOUNDARIES
    la  $s1, CHARACTER
	jal draw
	
	li $v0, 32
	li $a0, 400 # Wait one second (1000 milliseconds)
	syscall	
	
	j player_move_end

keypress_happened:
	lw $t2, 4($t9) # this assumes $t9 is set to 0xfff0000 from before
	beq $t2, 0x61, respond_to_a # ASCII code of 'a' is 0x61 or 97 in decimal
	
	beq $t2, 0x77, respond_to_w # ASCII code of 'a' is 0x61 or 97 in decimal
	
	beq $t2, 0x64, respond_to_d # ASCII code of 'a' is 0x61 or 97 in decimal
	
	j player_move_end
	
respond_to_a:
	
player_move_left:
	la  $s0, CHARACTER_BOUNDARIES
	jal erase_draw
	
	#li $v0, 32
	#li $a0, 500 # Wait one second (1000 milliseconds)
	#syscall
check_within_game_screen_left:
	# Get Row Starts
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
	lw $t1, 0($s0)
	ble $t1, 4, exit_check_within_game_screen_left
check_within_game_screen_left_condition1:
	lw $t1, 4($s0)
	bgt $t1, 104, exit_check_within_game_screen_left
check_within_game_screen_left_condition2:
	lw $t1, 8($s0)
	addi $t1, $t1, -3
	ble $t1, 3, exit_check_within_game_screen_left
check_within_game_screen_left_condition3:
	lw $t1, 12($s0)
	addi $t1, $t1, -3
	bgt $t1, 59, exit_check_within_game_screen_left
	
check_platform1_collision_left:
	
	lw $t1, 0($s0)
	
	la $s1, PLATFORM1_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform1_collision_left_condition1
	j check_platform2_collision_left
check_platform1_collision_left_condition1:
	lw $t1, 4($s0)
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform1_collision_left_condition2
	j check_platform2_collision_left
check_platform1_collision_left_condition2:
	lw $t1, 8($s0)
	addi $t1, $t1, -3
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform1_collision_left_condition3
	j check_platform2_collision_left
check_platform1_collision_left_condition3:
	lw $t1, 12($s0)
	addi $t1, $t1, -3
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_left
	j check_platform2_collision_left
	
check_platform2_collision_left:
	lw $t1, 0($s0)
	
	la $s1, PLATFORM2_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform2_collision_left_condition1
	j check_platform3_collision_left
check_platform2_collision_left_condition1:
	lw $t1, 4($s0)
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform2_collision_left_condition2
	j check_platform3_collision_left
check_platform2_collision_left_condition2:
	lw $t1, 8($s0)
	addi $t1, $t1, -3
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform2_collision_left_condition3
	j check_platform3_collision_left
check_platform2_collision_left_condition3:
	lw $t1, 12($s0)
	addi $t1, $t1, -3
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_left
	j check_platform3_collision_left
	

check_platform3_collision_left:
	
	lw $t1, 0($s0)
	la $s1, PLATFORM3_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform3_collision_left_condition1
	j process_left_update
check_platform3_collision_left_condition1:
	lw $t1, 4($s0)
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform3_collision_left_condition2
	j process_left_update
check_platform3_collision_left_condition2:
	lw $t1, 8($s0)
	addi $t1, $t1, -3
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform3_collision_left_condition3
	j process_left_update
check_platform3_collision_left_condition3:
	lw $t1, 12($s0)
	addi $t1, $t1, -3
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_left
	j process_left_update 	

process_left_update:	
	
	# Get Column Start
	# 8($s0)
	# Get Column End
	# 12($s0)
	lw $t1, 8($s0)
	addi $t1, $t1, -3
	sw $t1, 8($s0)
	lw $t1, 12($s0)
	addi $t1, $t1, -3
	sw $t1, 12($s0)	
	
	#li $v0, 32
	#li $a0, 500 # Wait one second (1000 milliseconds)
	#syscall
exit_check_within_game_screen_left:		
	#la  $s0, CHARACTER_BOUNDARIES
	la  $s1, CHARACTER
	jal draw
	
	
	#li $v0, 32
	#li $a0, 1000 # Wait one second (1000 milliseconds)
	#syscall
	
	j player_move_end
	
respond_to_w:
	
player_move_up:
	la  $s0, CHARACTER_BOUNDARIES
	jal erase_draw
	
	#li $v0, 32
	#li $a0, 500 # Wait one second (1000 milliseconds)
	#syscall
check_within_game_screen_up:
	# Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
	lw $t1, 0($s0)
	addi $t1, $t1, -3
	ble $t1, 4, exit_check_within_game_screen_up
check_within_game_screen_up_condition1:
	lw $t1, 4($s0)
	addi $t1, $t1, -3
	bgt $t1, 104, exit_check_within_game_screen_up
check_within_game_screen_up_condition2:
	lw $t1, 8($s0)
	ble $t1, 4, exit_check_within_game_screen_up
check_within_game_screen_up_condition3:
	lw $t1, 12($s0)
	bgt $t1, 59, exit_check_within_game_screen_up

check_platform1_collision_up:
	
	lw $t1, 0($s0)
	addi $t1, $t1, -3
	la $s1, PLATFORM1_BOUNDARIES
	lw $t2, 4($s1)

	ble $t1, $t2, check_platform1_collision_up_condition1
	j check_platform2_collision_up
check_platform1_collision_up_condition1:
	lw $t1, 4($s0)
    addi $t1, $t1, -3
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform1_collision_up_condition2
	j check_platform2_collision_up
check_platform1_collision_up_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform1_collision_up_condition3
	j check_platform2_collision_up
check_platform1_collision_up_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_up
	j check_platform2_collision_up
	
check_platform2_collision_up:
	lw $t1, 0($s0)
	addi $t1, $t1, -3
	la $s1, PLATFORM2_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform2_collision_up_condition1
	j check_platform3_collision_up
check_platform2_collision_up_condition1:
	lw $t1, 4($s0)
    addi $t1, $t1, -3
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform2_collision_up_condition2
	j check_platform3_collision_up
check_platform2_collision_up_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform2_collision_up_condition3
	j check_platform3_collision_up
check_platform2_collision_up_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_up
	j check_platform3_collision_up
	

check_platform3_collision_up:
	
	lw $t1, 0($s0)
    addi $t1, $t1, -3
	la $s1, PLATFORM3_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform3_collision_up_condition1
	j process_up_update
check_platform3_collision_up_condition1:
	lw $t1, 4($s0)
    addi $t1, $t1, -3
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform3_collision_up_condition2
	j process_up_update
check_platform3_collision_up_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform3_collision_up_condition3
	j process_up_update
check_platform3_collision_up_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_up
	j process_up_update 	

process_up_update:	
	#li $v0, 4
	#la $a0, newline
	#syscall
	# Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	lw $t1, 0($s0)
	addi $t1, $t1, -3
	sw $t1, 0($s0)
	lw $t1, 4($s0)
	addi $t1, $t1, -3
	sw $t1, 4($s0)	
	
exit_check_within_game_screen_up:	
	#la  $s0, CHARACTER_BOUNDARIES
	la  $s1, CHARACTER
	jal draw
	
	#li $v0, 32
	#li $a0, 500 # Wait one second (1000 milliseconds)
	#syscall	
	
	j player_move_end
	
respond_to_d:
player_move_right:
	la  $s0, CHARACTER_BOUNDARIES
	jal erase_draw
	
	#li $v0, 32
	#li $a0, 500 # Wait one second (1000 milliseconds)
	#syscall
check_within_game_screen_right:
	# Get Row Starts
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
	lw $t1, 0($s0)
	ble $t1, 4, exit_check_within_game_screen_right
check_within_game_screen_right_condition1:
	lw $t1, 4($s0)
	bgt $t1, 104, exit_check_within_game_screen_right
check_within_game_screen_right_condition2:
	lw $t1, 8($s0)
	addi $t1, $t1, 3
	ble $t1, 3, exit_check_within_game_screen_right
check_within_game_screen_right_condition3:
	lw $t1, 12($s0)
	addi $t1, $t1, 3
	bgt $t1, 59, exit_check_within_game_screen_right

check_platform1_collision_right:
	
	lw $t1, 0($s0)
	
	la $s1, PLATFORM1_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform1_collision_right_condition1
	j check_platform2_collision_right
check_platform1_collision_right_condition1:
	lw $t1, 4($s0)
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform1_collision_right_condition2
	j check_platform2_collision_right
check_platform1_collision_right_condition2:
	lw $t1, 8($s0)
	addi $t1, $t1, 3
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform1_collision_right_condition3
	j check_platform2_collision_right
check_platform1_collision_right_condition3:
	lw $t1, 12($s0)
	addi $t1, $t1, 3
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_right
	j check_platform2_collision_right
	
check_platform2_collision_right:
	lw $t1, 0($s0)
	
	la $s1, PLATFORM2_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform2_collision_right_condition1
	j check_platform3_collision_right
check_platform2_collision_right_condition1:
	lw $t1, 4($s0)
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform2_collision_right_condition2
	j check_platform3_collision_right
check_platform2_collision_right_condition2:
	lw $t1, 8($s0)
	addi $t1, $t1, 3
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform2_collision_right_condition3
	j check_platform3_collision_right
check_platform2_collision_right_condition3:
	lw $t1, 12($s0)
	addi $t1, $t1, 3
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_right
	j check_platform3_collision_right
	

check_platform3_collision_right:
	
	lw $t1, 0($s0)
	la $s1, PLATFORM3_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_platform3_collision_right_condition1
	j process_right_update
check_platform3_collision_right_condition1:
	lw $t1, 4($s0)
	lw $t2, 0($s1)
	ble $t2, $t1, check_platform3_collision_right_condition2
	j process_right_update
check_platform3_collision_right_condition2:
	lw $t1, 8($s0)
	addi $t1, $t1, -3
	lw $t2, 12($s1)
	ble $t1, $t2, check_platform3_collision_right_condition3
	j process_right_update
check_platform3_collision_right_condition3:
	lw $t1, 12($s0)
	addi $t1, $t1, -3
	lw $t2, 8($s1)
	ble $t2, $t1, exit_check_within_game_screen_right
	j process_right_update 	

process_right_update:	
	# Get Column Start
	# 8($s0)
	# Get Column End
	# 12($s0)
	lw $t1, 8($s0)
	addi $t1, $t1, 3
	sw $t1, 8($s0)
	lw $t1, 12($s0)
	addi $t1, $t1, 3
	sw $t1, 12($s0)	
	
	#li $v0, 32
	#li $a0, 500 # Wait one second (1000 milliseconds)
	#syscall
exit_check_within_game_screen_right:		
	#la  $s0, CHARACTER_BOUNDARIES
	la  $s1, CHARACTER
	jal draw
	
	#li $v0, 32
	#li $a0, 500 # Wait one second (1000 milliseconds)
	#syscall	
	
	j player_move_end

player_move_end:

check_finish_collision:
	
	lw $t1, 0($s0)
	la $s1, FINISH_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, check_finish_collision_condition1
	j player_move_end_continued
check_finish_collision_condition1:
	lw $t1, 4($s0)
	lw $t2, 0($s1)
	ble $t2, $t1, check_finish_collision_condition2
	j player_move_end_continued
check_finish_collision_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, check_finish_collision_condition3
	j player_move_end_continued
check_finish_collision_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, end	
    j player_move_end_continued

player_move_end_continued:


    la  $s0, ENEMY_BULLETS
	jal erase_boundary
enemy_check_within_game_screen_down:
	# Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
	lw $t1, 0($s0)
	addi $t1, $t1, 1
	ble $t1, 4, reset_enemy
enemy_check_within_game_screen_down_condition1:
	lw $t1, 4($s0)
	addi $t1, $t1, 1
	bgt $t1, 104, reset_enemy
enemy_check_within_game_screen_down_condition2:
	lw $t1, 8($s0)
	ble $t1, 4, reset_enemy
enemy_check_within_game_screen_down_condition3:
	lw $t1, 12($s0)
	bgt $t1, 59, reset_enemy
	
	#li $v0, 4
	#la $a0, newline
	#syscall
enemy_check_platform1_collision_down:
	
	lw $t1, 0($s0)
	addi $t1, $t1, 1
	
	la $s1, PLATFORM1_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, enemy_check_platform1_collision_down_condition1
	j enemy_check_platform2_collision_down
enemy_check_platform1_collision_down_condition1:
	lw $t1, 4($s0)
	addi $t1, $t1, 1
	lw $t2, 0($s1)
	ble $t2, $t1, enemy_check_platform1_collision_down_condition2
	j enemy_check_platform2_collision_down
enemy_check_platform1_collision_down_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, enemy_check_platform1_collision_down_condition3
	j enemy_check_platform2_collision_down
enemy_check_platform1_collision_down_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, reset_enemy
	j enemy_check_platform2_collision_down
	
enemy_check_platform2_collision_down:
	lw $t1, 0($s0)
	addi $t1, $t1, 1
	
	la $s1, PLATFORM2_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, enemy_check_platform2_collision_down_condition1
	j enemy_check_platform3_collision_down
enemy_check_platform2_collision_down_condition1:
	lw $t1, 4($s0)
	addi $t1, $t1, 1
	lw $t2, 0($s1)
	ble $t2, $t1, enemy_check_platform2_collision_down_condition2
	j enemy_check_platform3_collision_down
enemy_check_platform2_collision_down_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, enemy_check_platform2_collision_down_condition3
	j enemy_check_platform3_collision_down
enemy_check_platform2_collision_down_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, reset_enemy
	j enemy_check_platform3_collision_down
	

enemy_check_platform3_collision_down:
	
	lw $t1, 0($s0)
	addi $t1, $t1, 1
	
	la $s1, PLATFORM3_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, enemy_check_platform3_collision_down_condition1
	j enemy_check_finish_collision
enemy_check_platform3_collision_down_condition1:
	lw $t1, 4($s0)
	addi $t1, $t1, 1
	lw $t2, 0($s1)
	ble $t2, $t1, enemy_check_platform3_collision_down_condition2
	j enemy_check_finish_collision
enemy_check_platform3_collision_down_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, enemy_check_platform3_collision_down_condition3
	j enemy_check_finish_collision
enemy_check_platform3_collision_down_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, reset_enemy
	j enemy_check_finish_collision

enemy_check_finish_collision:
	
	lw $t1, 0($s0)
	la $s1, FINISH_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, enemy_check_finish_collision_condition1
	j enemy_process_down_update 
enemy_check_finish_collision_condition1:
	lw $t1, 4($s0)
	lw $t2, 0($s1)
	ble $t2, $t1, enemy_check_finish_collision_condition2
	j enemy_process_down_update 
enemy_check_finish_collision_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, enemy_check_finish_collision_condition3
	j enemy_process_down_update 
enemy_check_finish_collision_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, reset_enemy
    j enemy_process_down_update 

enemy_process_down_update:
	# Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	lw $t1, 0($s0)
	addi $t1, $t1, 1
	sw $t1, 0($s0)
	lw $t1, 4($s0)
	addi $t1, $t1, 1
	sw $t1, 4($s0)	
	
enemy_exit_check_within_game_screen_down:	
	#la  $s0, CHARACTER_BOUNDARIES
	jal print_boundary

enemy_check_character_collision:
	
	lw $t1, 0($s0)
	la $s1, CHARACTER_BOUNDARIES
	lw $t2, 4($s1)
	
	ble $t1, $t2, enemy_check_character_collision_condition1
	j enemy_exit_check_within_game_screen_down_continued
enemy_check_character_collision_condition1:
	lw $t1, 4($s0)
	lw $t2, 0($s1)
	ble $t2, $t1, enemy_check_character_collision_condition2
	j enemy_exit_check_within_game_screen_down_continued
enemy_check_character_collision_condition2:
	lw $t1, 8($s0)
	lw $t2, 12($s1)
	ble $t1, $t2, enemy_check_character_collision_condition3
	j enemy_exit_check_within_game_screen_down_continued 
enemy_check_character_collision_condition3:
	lw $t1, 12($s0)
	lw $t2, 8($s1)
	ble $t2, $t1, end	
    j enemy_exit_check_within_game_screen_down_continued 
enemy_exit_check_within_game_screen_down_continued:

	j check_reset
			
					
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

erase_boundary:
	li $t0, BASE_ADDRESS
	addi $sp, $sp, -4
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
	sw $zero, ($t2)
	# Calc Top Right
	lw $a0, 12($s0)
	lw $a1, 0($s0)
	jal xy_offset
		
	add $t2, $t0, $v0 
	sw $zero, ($t2)
	
	# Calculate Bottom
	# Calc Bottom Left
	lw $a0, 8($s0)
	lw $a1, 4($s0)
	jal xy_offset
		
	add $t2, $t0, $v0 
	sw $zero, ($t2)
	# Calc Bottom Right
	lw $a0, 12($s0)
	lw $a1, 4($s0)
	jal xy_offset
		
	add $t2, $t0, $v0 
	sw $zero, ($t2)
	
end_erase_boundary:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra		
	
print_boundary:
	li $t0, BASE_ADDRESS
	li $t1, WALL_COLOR
	addi $sp, $sp, -4
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

draw:
	li $t0, BASE_ADDRESS
	la $t1, ($s1)
    add $t2, $zero, $zero
    add $t6, $zero, $zero
	addi $sp, $sp, -4
	sw $ra, 0($sp)
    j draw_position

draw_update:
    addi $t2, $t2, 4
    addi $t6, $t6, 1

draw_position: 
    lw $a0, 8($s0)
	lw $t7, 0($s0)
    add $t7, $t7, $t6
    move $a1, $t7
	jal xy_offset
		
	add $t5, $t0, $v0 
	
draw_loop:
    add $t3, $t1, $t2
    lw $t4, 0($t3)
    beq $t4, -2, end_draw
    beq $t4, -1, draw_update

    sw $t4, ($t5)
    addi $t5, $t5, 4

    addi $t2, $t2, 4
    j draw_loop
	
end_draw:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

erase_draw:
	li $t0, BASE_ADDRESS
    add $t6, $zero, $zero
	addi $sp, $sp, -4
	sw $ra, 0($sp)
    lw $t9, 4($s0)
    j erase_draw_position

erase_draw_update:
    addi $t6, $t6, 1

erase_draw_position: 
    lw $a0, 8($s0)
	lw $t7, 0($s0)
    add $t7, $t7, $t6
    move $a1, $t7
	jal xy_offset
		
	add $t5, $t0, $v0 

erase_draw_end_position: 
    lw $a0, 12($s0)
    move $a1, $t7
	jal xy_offset
		
	add $t8, $t0, $v0 

erase_draw_loop:
    bgt $t5, $t8, erase_draw_update
    bgt $t7, $t9, erase_end_draw

    sw $zero, ($t5)
    addi $t5, $t5, 4


    j erase_draw_loop
	
erase_end_draw:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
## Draw Character
#draw_character:
#	addi $sp, $sp, 4
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
	

	bge $t9, 5, condition1
	j else_paint_walls_loop
condition1:
	ble $t9, 103, condition2
	j else_paint_walls_loop
condition2:
	bge $t8, 5, condition3
	j else_paint_walls_loop
condition3:
	ble $t8, 58, exit_paint_walls_loop
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

reset_enemy:
    # Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
    #ENEMY_BULLETS: .word 6, 6, 23, 23
	la  $s0, ENEMY_BULLETS
    li $t0, 6
    sw $t0, 0($s0)
    li $t0, 6
    sw $t0, 4($s0)
    li $t0, 23
    sw $t0, 8($s0)
    li $t0, 23
    sw $t0, 12($s0)

    j check_reset

reset_platform1:
    # Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
	ble $s2, 0, reset_platform1_condition
    li $s2, -1
    j reset_platform1_resume
reset_platform1_condition:
    li $s2, 1
reset_platform1_resume:
    j player_move

reset_platform2:
    # Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)
	ble $s3, 0, reset_platform2_condition
    li $s3, -1
    j reset_platform2_resume
reset_platform2_condition:
    li $s3, 1
reset_platform2_resume:
    j player_move

reset_game:
	# Get Row Start
	# 0($s0)
	# Get Row End
	# 4($s0)
	# Get Column Start 
	# 8($s0)
	# Get Column End
	# 12($s0)

    #CHARACTER_BOUNDARIES: .word 97, 104, 5, 10
	la  $s0, CHARACTER_BOUNDARIES
    li $t0, 97
    sw $t0, 0($s0)
    li $t0, 104
    sw $t0, 4($s0)
    li $t0, 5
    sw $t0, 8($s0)
    li $t0, 10
    sw $t0, 12($s0)

    #ENEMY_BULLETS: .word 6, 6, 23, 23
	la  $s0, ENEMY_BULLETS
    li $t0, 6
    sw $t0, 0($s0)
    li $t0, 6
    sw $t0, 4($s0)
    li $t0, 23
    sw $t0, 8($s0)
    li $t0, 23
    sw $t0, 12($s0)

    j main

end:	li $v0, 10
	syscall
