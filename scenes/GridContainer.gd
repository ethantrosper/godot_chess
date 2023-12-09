extends GridContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	for button in get_children():
		if button is TextureRectButton:
			button.connect("mouse_entered", self, "_on_TextureRectButton_mouse_entered")

func _on_TextureRectButton_mouse_entered():
	print("mouse_entered ", get_name())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
