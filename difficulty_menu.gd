extends CanvasLayer

signal difficulty_picked

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# this shouldnt be neccesary but is due to bullshit
	var difficulty_menu = get_node("DifficultyMenuContainer")
	difficulty_menu.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_main_menu_start_game_pressed() -> void:
	var difficulty_menu = get_node("DifficultyMenuContainer")
	difficulty_menu.show()

func _on_easy_button_pressed() -> void:
	difficulty_picked.emit("easy")
	var difficulty_menu = get_node("DifficultyMenuContainer")
	difficulty_menu.hide()

func _on_medium_button_pressed() -> void:
	difficulty_picked.emit("medium")
	var difficulty_menu = get_node("DifficultyMenuContainer")
	difficulty_menu.hide()

func _on_hard_button_pressed() -> void:
	difficulty_picked.emit("hard")
	var difficulty_menu = get_node("DifficultyMenuContainer")
	difficulty_menu.hide()
