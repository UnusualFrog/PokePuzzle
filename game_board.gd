extends CanvasLayer

var icon_fire = preload("res://art/fire.png")
var icon_water = preload("res://art/water.png")
var icon_grass = preload("res://art/grass.png")

var attacker
var defender
var puzzle_button_grid = []
var game_score = 0
var time_elapsed = 0.0
var game_is_active = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (game_is_active):
		var timer_text = get_node("CanvasLayer/TimerText")
		time_elapsed += delta
		timer_text.text = str(snapped(time_elapsed, 0.1))

func _on_button_pressed(emitter):
	#print("Signal emitter name: ", emitter.type_1)
	
	# Set value of attacker and defender when a button is picked
	if attacker == null:
		attacker = emitter
	else:
		defender = emitter
	
	# If both targets are determined and targets are both unique, resolve outcome
	if attacker != null && defender != null:
		if true:# attacker.id_x != defender.id_x && attacker.id_y != defender.id_y:
			#print(attacker.type_1, " -> " , defender.type_1)
			#print(attacker.id, defender.id)
			#print(Puzzle_Button.determine_outcome(attacker.type_1, defender.type_1))
			
			# If attacker hits defender, hide both and check for end of game
			if (Puzzle_Button.determine_outcome(attacker.type_1, defender.type_1)):
				# Hide selected buttons
				attacker.hide()
				defender.hide()
				
				# Remove buttons from grid
				puzzle_button_grid[attacker.id_x-1][attacker.id_y-1] = null
				puzzle_button_grid[defender.id_x-1][defender.id_y-1] = null
				
				# Increment score
				var score_value = get_node("CanvasLayer/ScoreValue")
				game_score += 10
				score_value.text = str(game_score)
				
				# If game over, show win text and stop timer
				if (check_game_state()):
					game_is_active = false
					var win_text = get_node("CanvasLayer/WinText")
					win_text.show()
			
			# Reset attacker and defender when both are picked
			attacker = null
			defender = null
			
			emitter.release_focus()

# Check if game has ended
func check_game_state():
	var remaining_types = {}
	
	for row in puzzle_button_grid:
		for button in row:
			if (button != null):
				#print(button.id_x, ", ", button.id_y, ", ", button.type_1)
				remaining_types.set(button.type_1, "")
	
	#print(remaining_types)
	
	if (remaining_types.size() <= 1):
		return true
	return false

func generate_board():
	var puzzle_button_scene = preload("res://puzzle_button.tscn")
	game_is_active = true
	
	# set game board dimensions
	var x_off = 200
	var y_off = -25
	var button_size = 100
	var side_length = range(1,6) 
	
	# Place buttons on grid in size of side_length
	for row in side_length:
		var new_row = []
		for col in side_length:
			# Create node instancce from scene and add to game board
			var new_puzzle_button = puzzle_button_scene.instantiate()
			new_puzzle_button.id_x = row
			new_puzzle_button.id_y = col
			add_child(new_puzzle_button)
			
			# Set position and size of buttons
			new_puzzle_button.position = Vector2((row * button_size) + x_off, (col * button_size) + y_off)
			new_puzzle_button.set_size(Vector2(button_size, button_size))
			
			# Connect all buttons to receiver function
			new_puzzle_button.pressed.connect(_on_button_pressed.bind(new_puzzle_button))
			
			# Set the icon of each button
			match new_puzzle_button.type_1:
				"Fire":
					new_puzzle_button.icon = icon_fire
				"Water":
					new_puzzle_button.icon = icon_water
				"Grass":
					new_puzzle_button.icon = icon_grass
			
			# Add button to row
			new_row.push_back(new_puzzle_button)
			# Add full row to grid
		puzzle_button_grid.push_back(new_row)

# Runs when the 'Play' button has been pressed on the main menu
func _on_main_menu_start_game_pressed() -> void:
	generate_board()
	var timer_text = get_node("CanvasLayer/TimerText")
	var score_text = get_node("CanvasLayer/ScoreText")
	var score_value = get_node("CanvasLayer/ScoreValue")
	
	timer_text.show()
	score_text.show()
	score_value.show()
	
	
