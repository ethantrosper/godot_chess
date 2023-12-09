extends Node

#initialised with starting state
var gameOver = false
enum boardState {WHITE_WIN, TIE_GAME, BLACK_WIN, BLACK_CHECKED, WHITE_CHECKED}
var boardHistory = []
var currBoardPos = []
var chess_board = [[],[],[],[],[],[],[],[]]

# Called when the node enters the scene tree for the first time.
func _ready():
	print(load_file())
	write_file()
	print(load_file())
	_init_board()
	_board_update(8, 16)
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _is_game_over():
	pass
	
func _get_board_state():
	pass
	
func load_file():
	var file = FileAccess.open("res://testtext.txt", FileAccess.READ)
	var content = file.get_as_text()
	return content
	
func write_file():
	var file = FileAccess.open("res://testtext.txt", FileAccess.WRITE)
	var content = "Hello Universe"
	
	file.store_string(content)
	
func _init_board():
	currBoardPos = ["wR", "wN", "wB", "wK", "wQ", "wB", "wN", "wR",
					  "wP", "wP", "wP", "wP", "wP", "wP", "wP", "wP",
					  "EE", "EE", "EE", "EE", "EE", "EE", "EE", "EE",
					  "EE", "EE", "EE", "EE", "EE", "EE", "EE", "EE",
					  "EE", "EE", "EE", "EE", "EE", "EE", "EE", "EE",
					  "EE", "EE", "EE", "EE", "EE", "EE", "EE", "EE",
					  "bP", "bP", "bP", "bP", "bP", "bP", "bP", "bP",
					  "bR", "bN", "bB", "bQ", "bK", "bB", "bN", "bR"]
	_print_board()
	
func _board_update(pos_from , pos_to):
	var temp_from = currBoardPos[pos_from]
	currBoardPos[pos_from] = "EE"
	currBoardPos[pos_to] = temp_from
	_print_board()
	
func _print_board():
	var board = ""
	for x in range(0 , currBoardPos.size()):
		board += currBoardPos[x]
		board += " "
		if(x == 7 || x == 15 || x == 23 || x== 31 || x == 39 || x == 47 || x == 55 || x== 63):
			board += "\n"
	print(board)
	
	
	
	
