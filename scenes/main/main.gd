extends Node2D
# Main script
# Load coloring page

var page = preload("res://scenes/color_page/color_page.tscn")

	


func _on_button_start_pressed() -> void:
	var page_to_color = page.instantiate()
	$PageToColor.add_child(page_to_color)
	
