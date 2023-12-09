extends Control

# Assuming this is your main Control node script

func _ready():
	var grid_container = $GridContainer  # Adjust the path to your GridContainer
	for button in grid_container.get_children():
		if button is TextureButton:
			button.connect("mouse_entered",_on_TextureButton_mouse_entered())
func _on_TextureButton_mouse_entered():
	print("Mouse entered: ", get_name())

# Rest of your code...
