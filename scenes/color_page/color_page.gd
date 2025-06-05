extends CanvasLayer
#PageToColor script
var image_path = [
	"res://pages/0.jpeg",
	"res://pages/1.jpeg",
	"res://pages/2.jpeg",
	"res://pages/3.jpeg",
	"res://pages/4.jpeg",
	"res://pages/5.jpeg",
	"res://pages/6.jpeg",
	"res://pages/7.jpeg",
	"res://pages/8.jpeg",
	"res://pages/9.jpeg",
	
]
var max_images = 9
var count = 0
var brush_size = 8
var brush_color := Color(1, 0, 0)  # Red
func _ready() -> void:
	# LOad the first page
	$ColorRect/PageSprite2D.texture = load(image_path[count])
	


func _on_button_pressed() -> void:
	count += 1
	if count <= max_images:
		$ColorRect/PageSprite2D.texture = load(image_path[count])
		
	else:
		$Button.text = " Finished!"

		
	
		
	
	
	
	
func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		_paint(event.position)
	elif event is InputEventMouseMotion and event.button_mask & MOUSE_BUTTON_MASK_LEFT:
			_paint(event.position)
			
func _paint(pos: Vector2):
	var px = int(pos.x)
	var py = int(pos.y)
	print("Paint funcion To-Do"," X-> ",px," Y->  ",py)
