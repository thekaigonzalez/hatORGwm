extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var following = false
var startpos = Vector2()

# If true, it will not free the window, instead it will set it 
# invisible which keeps everything running.
# Unless your application runs keep alive services / Loops this is recommended
# To be turned off, as your application will waste resources unless you show it again.

# This is enabled by default with the "Minimize" function.
export var KeepAlive = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Winchrome_gui_input(event):
	if event is InputEventMouseButton:
		if event.get_button_index() == 1:
			following = !following
			startpos = get_local_mouse_position()
var counter = 0
func _process(_d):
	if following:
		rect_position = rect_position + get_local_mouse_position() - startpos
