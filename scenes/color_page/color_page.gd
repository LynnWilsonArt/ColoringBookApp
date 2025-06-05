extends CanvasLayer
#PageToColor script
var image_path = [
	"res://pages/1.jpeg",
	"res://pages/2.jpeg",
	"res://pages/3.jpeg",
	"res://pages/4.jpeg",
	"res://pages/5.jpeg",
	"res://pages/6.jpeg",
	"res://pages/7.jpeg",
	"res://pages/8.jpeg",
	"res://pages/9.jpeg",
	"res://pages/10.jpeg",
	
]
var max_images = 9
var count = 0


func _on_button_pressed() -> void:
	print("Count Top : ",count)
	if count < max_images:
		print("Image path: ",image_path[count])
		$ColorRect/PageSprite2D.texture = load(image_path[count])
	else:
		$Button.text = " Finished!"
	count += 1
	print("Count: ",count)
	
