extends Sprite2D
const row_size = 8
const col_size =12

const cell_width = 12.3






const texture_holder= preload("res://texture_holder.tscn")

const archer = preload("res://assets/archersn.png")
const babydragon = preload ("res://assets/baby-dragonn.png")
#const barbarian = preload("res://assets/barbarians.png")
#const bowler = preload ("res://assets/bowler.png")
#const healer = preload ("res://assets/healer.png")
#const hogrider = preload ("res://assets/hog-rider.png")
const minion = preload("res://assets/minionsn.png")
#const warden = preload("res://assets/warden.png")
#const wizard = preload ("res://assets/wizard.png")



#const dark_archer = preload("res://assets/dark/archer dark.jpg")
#const dark_babydragon = preload ("res://assets/dark/baby drag dark.jpg")
const dark_barbarian = preload("res://assets/dark/barbraian darkn.jpg")
#const dark_bowler = preload ("res://assets/dark/bowler dark.jpg")
#const dark_healer = preload ("res://assets/dark/healer dark.jpg")
#const dark_hogrider = preload ("res://assets/dark/hog dark.jpg")
#const dark_minion = preload("res://assets/dark/minion dark.jpg")
#const dark_warden = preload("res://assets/dark/warden dark.jpg")
#const dark_wizard = preload ("res://assets/dark/wizard dark.jpg")



@onready var pieces = $pieces
@onready var dots = $dots
@onready var turn = $turn

# variables 
var board :Array
var white :bool
var state : bool
var moves = []
var selected_piece : Vector2


# Called when the node enters the scene tree for the first time.
func _ready():
	board.append([5,9,6,7,8,6,9,5])
	board.append([1,2,3,4,4,3,2,1])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([-1,-2,-3,-4,-4,-3,-2,-1])
	board.append([-5,-9,-6,-7,-8,-6,-9,-5])
	
	display_board()
	
func display_board():
	for i in col_size:
		for j in row_size:
			var holder = texture_holder.instantiate()
			pieces.add_child(holder)
			holder.global_position= Vector2(j*cell_width+(cell_width/2),i*cell_width-(cell_width/2))
			
			match board[i][j]:
				-1: holder.texture = dark_barbarian
			#	-2: holder.texture = dark_archer
#				-3: holder.texture = dark_minion
#				-4: holder.texture = dark_bowler
#				-5: holder.texture = dark_wizard
#				-6: holder.texture = dark_babydragon
#				-7: holder.texture = dark_warden
#				-8: holder.texture = dark_healer
#				-9: holder.texture = dark_hogrider
				0: holder.texture = null
#				1: holder.texture = barbarian
				2: holder.texture = archer
				3: holder.texture = minion
#				4: holder.texture = bowler
#				5: holder.texture = wizard
				6: holder.texture = babydragon
#				7: holder.texture = warden
#				8: holder.texture = healer
#				9: holder.texture = hogrider 
				
				
