extends Node2D

var turn = 0
var blacks_arrow = Vector2i(0,2)
var whites_arrow = Vector2i(0,5)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("end_turn"):
		if turn == 0:
			print("Whites Turn!")
			$TileMap.set_cell(0, blacks_arrow, 4, Vector2i(1,0), 0)
			$TileMap.set_cell(0, whites_arrow, 4, Vector2i(0,0), 1)
			turn = 1
		else:
			print("Blacks Turn!")
			$TileMap.set_cell(0, blacks_arrow, 4, Vector2i(0,0), 0)
			$TileMap.set_cell(0, whites_arrow, 4, Vector2i(1,0), 1)
			turn = 0

func _input_event(event):
	if Input.is_action_just_pressed("end_turn"):
		if turn == 0:
			print("Whites Turn!")
			$TileMap.set_cell(0, blacks_arrow, 4, Vector2i(1,0), 0)
			$TileMap.set_cell(0, whites_arrow, 4, Vector2i(0,0), 1)
			turn = 1
		else:
			print("Blacks Turn!")
			$TileMap.set_cell(0, blacks_arrow, 4, Vector2i(0,0), 0)
			$TileMap.set_cell(0, whites_arrow, 4, Vector2i(1,0), 1)
			turn = 0
