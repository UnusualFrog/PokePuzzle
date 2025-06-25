extends CanvasLayer

signal start_game_pressed


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_button_pressed() -> void:
	print("Pressed Play!")
	start_game_pressed.emit()
	var main_menu = get_node("MainMenuContainer")
	main_menu.hide()


func _on_game_board_main_menu_return() -> void:
	var main_menu = get_node("MainMenuContainer")
	main_menu.show()
