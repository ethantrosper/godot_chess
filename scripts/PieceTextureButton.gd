extends TextureButton

@export var DRAGPREVIEW: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _drop_data(_at_position, data):
	#hard to implement easy to understand.
	data["origin_node"].texture_normal = data["target_texture_normal"]
	data["origin_node"].texture_pressed = data["target_texture_pressed"]
	
	texture_normal = data["origin_texture_normal"]
	texture_pressed = data["origin_texture_pressed"]
		
func _get_drag_data(_at_position: Vector2):
	var slot = get_name()
	
	var data = {}
	data["origin_node"] = self
	data["origin_slot"] = slot
	data["origin_texture_normal"] = texture_normal
	data["origin_texture_pressed"] = texture_pressed
	
	var dragPreview = DRAGPREVIEW.instantiate()
	dragPreview.texture = texture_normal
	add_child(dragPreview)
	
	return data
	
# Can we drop something at this slot set to true for testing.
# This is where some logic would go.
func _can_drop_data(_at_position, data):
	#Best put in logic
	var target_slot = get_name()
	print(texture_normal.resource_name)
	data["target_texture_normal"] = texture_normal
	data["target_texture_pressed"] = texture_pressed
	
	return true
