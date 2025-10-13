extends CanvasLayer

signal main_menu_return

# Load single type icons 
var icon_normal = preload("res://art/type_icons/normal.png")
var icon_fire = preload("res://art/type_icons/fire.png")
var icon_water = preload("res://art/type_icons/water.png")
var icon_grass = preload("res://art/type_icons/grass.png")
var icon_electric = preload("res://art/type_icons/electric.png")
var icon_ice = preload("res://art/type_icons/ice.png")
var icon_fighting = preload("res://art/type_icons/fighting.png")
var icon_poison = preload("res://art/type_icons/poison.png")
var icon_ground = preload("res://art/type_icons/ground.png")
var icon_flying = preload("res://art/type_icons/flying.png")
var icon_psychic = preload("res://art/type_icons/psychic.png")
var icon_bug = preload("res://art/type_icons/bug.png")
var icon_rock = preload("res://art/type_icons/rock.png")
var icon_ghost = preload("res://art/type_icons/ghost.png")
var icon_dragon = preload("res://art/type_icons/dragon.png")
var icon_dark = preload("res://art/type_icons/dark.png")
var icon_steel = preload("res://art/type_icons/steel.png")
var icon_fairy = preload("res://art/type_icons/fairy.png")

# Load dual type icons 
var icon_bug_dark = preload("res://art/type_icons/combined/bug_dark.png")
var icon_bug_dragon = preload("res://art/type_icons/combined/bug_dragon.png")
var icon_bug_electric = preload("res://art/type_icons/combined/bug_electric.png")
var icon_bug_fairy = preload("res://art/type_icons/combined/bug_fairy.png")
var icon_bug_fighting = preload("res://art/type_icons/combined/bug_fighting.png")
var icon_bug_fire = preload("res://art/type_icons/combined/bug_fire.png")
var icon_bug_flying = preload("res://art/type_icons/combined/bug_flying.png")
var icon_bug_ghost = preload("res://art/type_icons/combined/bug_ghost.png")
var icon_bug_grass = preload("res://art/type_icons/combined/bug_grass.png")
var icon_bug_ground = preload("res://art/type_icons/combined/bug_ground.png")
var icon_bug_ice = preload("res://art/type_icons/combined/bug_ice.png")
var icon_bug_normal = preload("res://art/type_icons/combined/bug_normal.png")
var icon_bug_poison = preload("res://art/type_icons/combined/bug_poison.png")
var icon_bug_psychic = preload("res://art/type_icons/combined/bug_psychic.png")
var icon_bug_rock = preload("res://art/type_icons/combined/bug_rock.png")
var icon_bug_steel = preload("res://art/type_icons/combined/bug_steel.png")
var icon_bug_water = preload("res://art/type_icons/combined/bug_water.png")

# Dark type combinations
var icon_dark_dragon = preload("res://art/type_icons/combined/dark_dragon.png")
var icon_dark_electric = preload("res://art/type_icons/combined/dark_electric.png")
var icon_dark_fairy = preload("res://art/type_icons/combined/dark_fairy.png")
var icon_dark_fighting = preload("res://art/type_icons/combined/dark_fighting.png")
var icon_dark_fire = preload("res://art/type_icons/combined/dark_fire.png")
var icon_dark_flying = preload("res://art/type_icons/combined/dark_flying.png")
var icon_dark_ghost = preload("res://art/type_icons/combined/dark_ghost.png")
var icon_dark_grass = preload("res://art/type_icons/combined/dark_grass.png")
var icon_dark_ground = preload("res://art/type_icons/combined/dark_ground.png")
var icon_dark_ice = preload("res://art/type_icons/combined/dark_ice.png")
var icon_dark_normal = preload("res://art/type_icons/combined/dark_normal.png")
var icon_dark_poison = preload("res://art/type_icons/combined/dark_poison.png")
var icon_dark_psychic = preload("res://art/type_icons/combined/dark_psychic.png")
var icon_dark_rock = preload("res://art/type_icons/combined/dark_rock.png")
var icon_dark_steel = preload("res://art/type_icons/combined/dark_steel.png")
var icon_dark_water = preload("res://art/type_icons/combined/dark_water.png")

# Dragon type combinations
var icon_dragon_electric = preload("res://art/type_icons/combined/dragon_electric.png")
var icon_dragon_fairy = preload("res://art/type_icons/combined/dragon_fairy.png")
var icon_dragon_fighting = preload("res://art/type_icons/combined/dragon_fighting.png")
var icon_dragon_fire = preload("res://art/type_icons/combined/dragon_fire.png")
var icon_dragon_flying = preload("res://art/type_icons/combined/dragon_flying.png")
var icon_dragon_ghost = preload("res://art/type_icons/combined/dragon_ghost.png")
var icon_dragon_grass = preload("res://art/type_icons/combined/dragon_grass.png")
var icon_dragon_ground = preload("res://art/type_icons/combined/dragon_ground.png")
var icon_dragon_ice = preload("res://art/type_icons/combined/dragon_ice.png")
var icon_dragon_normal = preload("res://art/type_icons/combined/dragon_normal.png")
var icon_dragon_poison = preload("res://art/type_icons/combined/dragon_poison.png")
var icon_dragon_psychic = preload("res://art/type_icons/combined/dragon_psychic.png")
var icon_dragon_rock = preload("res://art/type_icons/combined/dragon_rock.png")
var icon_dragon_steel = preload("res://art/type_icons/combined/dragon_steel.png")
var icon_dragon_water = preload("res://art/type_icons/combined/dragon_water.png")

# Electric type combinations
var icon_electric_fairy = preload("res://art/type_icons/combined/electric_fairy.png")
var icon_electric_fighting = preload("res://art/type_icons/combined/electric_fighting.png")
var icon_electric_fire = preload("res://art/type_icons/combined/electric_fire.png")
var icon_electric_flying = preload("res://art/type_icons/combined/electric_flying.png")
var icon_electric_ghost = preload("res://art/type_icons/combined/electric_ghost.png")
var icon_electric_grass = preload("res://art/type_icons/combined/electric_grass.png")
var icon_electric_ground = preload("res://art/type_icons/combined/electric_ground.png")
var icon_electric_ice = preload("res://art/type_icons/combined/electric_ice.png")
var icon_electric_normal = preload("res://art/type_icons/combined/electric_normal.png")
var icon_electric_poison = preload("res://art/type_icons/combined/electric_poison.png")
var icon_electric_psychic = preload("res://art/type_icons/combined/electric_psychic.png")
var icon_electric_rock = preload("res://art/type_icons/combined/electric_rock.png")
var icon_electric_steel = preload("res://art/type_icons/combined/electric_steel.png")
var icon_electric_water = preload("res://art/type_icons/combined/electric_water.png")

# Fairy type combinations
var icon_fairy_fighting = preload("res://art/type_icons/combined/fairy_fighting.png")
var icon_fairy_fire = preload("res://art/type_icons/combined/fairy_fire.png")
var icon_fairy_flying = preload("res://art/type_icons/combined/fairy_flying.png")
var icon_fairy_ghost = preload("res://art/type_icons/combined/fairy_ghost.png")
var icon_fairy_grass = preload("res://art/type_icons/combined/fairy_grass.png")
var icon_fairy_ground = preload("res://art/type_icons/combined/fairy_ground.png")
var icon_fairy_ice = preload("res://art/type_icons/combined/fairy_ice.png")
var icon_fairy_normal = preload("res://art/type_icons/combined/fairy_normal.png")
var icon_fairy_poison = preload("res://art/type_icons/combined/fairy_poison.png")
var icon_fairy_psychic = preload("res://art/type_icons/combined/fairy_psychic.png")
var icon_fairy_rock = preload("res://art/type_icons/combined/fairy_rock.png")
var icon_fairy_steel = preload("res://art/type_icons/combined/fairy_steel.png")
var icon_fairy_water = preload("res://art/type_icons/combined/fairy_water.png")

# Fighting type combinations
var icon_fighting_fire = preload("res://art/type_icons/combined/fighting_fire.png")
var icon_fighting_flying = preload("res://art/type_icons/combined/fighting_flying.png")
var icon_fighting_ghost = preload("res://art/type_icons/combined/fighting_ghost.png")
var icon_fighting_grass = preload("res://art/type_icons/combined/fighting_grass.png")
var icon_fighting_ground = preload("res://art/type_icons/combined/fighting_ground.png")
var icon_fighting_ice = preload("res://art/type_icons/combined/fighting_ice.png")
var icon_fighting_normal = preload("res://art/type_icons/combined/fighting_normal.png")
var icon_fighting_poison = preload("res://art/type_icons/combined/fighting_poison.png")
var icon_fighting_psychic = preload("res://art/type_icons/combined/fighting_psychic.png")
var icon_fighting_rock = preload("res://art/type_icons/combined/fighting_rock.png")
var icon_fighting_steel = preload("res://art/type_icons/combined/fighting_steel.png")
var icon_fighting_water = preload("res://art/type_icons/combined/fighting_water.png")

# Fire type combinations
var icon_fire_flying = preload("res://art/type_icons/combined/fire_flying.png")
var icon_fire_ghost = preload("res://art/type_icons/combined/fire_ghost.png")
var icon_fire_grass = preload("res://art/type_icons/combined/fire_grass.png")
var icon_fire_ground = preload("res://art/type_icons/combined/fire_ground.png")
var icon_fire_ice = preload("res://art/type_icons/combined/fire_ice.png")
var icon_fire_normal = preload("res://art/type_icons/combined/fire_normal.png")
var icon_fire_poison = preload("res://art/type_icons/combined/fire_poison.png")
var icon_fire_psychic = preload("res://art/type_icons/combined/fire_psychic.png")
var icon_fire_rock = preload("res://art/type_icons/combined/fire_rock.png")
var icon_fire_steel = preload("res://art/type_icons/combined/fire_steel.png")
var icon_fire_water = preload("res://art/type_icons/combined/fire_water.png")

# Flying type combinations
var icon_flying_ghost = preload("res://art/type_icons/combined/flying_ghost.png")
var icon_flying_grass = preload("res://art/type_icons/combined/flying_grass.png")
var icon_flying_ground = preload("res://art/type_icons/combined/flying_ground.png")
var icon_flying_ice = preload("res://art/type_icons/combined/flying_ice.png")
var icon_flying_normal = preload("res://art/type_icons/combined/flying_normal.png")
var icon_flying_poison = preload("res://art/type_icons/combined/flying_poison.png")
var icon_flying_psychic = preload("res://art/type_icons/combined/flying_psychic.png")
var icon_flying_rock = preload("res://art/type_icons/combined/flying_rock.png")
var icon_flying_steel = preload("res://art/type_icons/combined/flying_steel.png")
var icon_flying_water = preload("res://art/type_icons/combined/flying_water.png")

# Ghost type combinations
var icon_ghost_grass = preload("res://art/type_icons/combined/ghost_grass.png")
var icon_ghost_ground = preload("res://art/type_icons/combined/ghost_ground.png")
var icon_ghost_ice = preload("res://art/type_icons/combined/ghost_ice.png")
var icon_ghost_normal = preload("res://art/type_icons/combined/ghost_normal.png")
var icon_ghost_poison = preload("res://art/type_icons/combined/ghost_poison.png")
var icon_ghost_psychic = preload("res://art/type_icons/combined/ghost_psychic.png")
var icon_ghost_rock = preload("res://art/type_icons/combined/ghost_rock.png")
var icon_ghost_steel = preload("res://art/type_icons/combined/ghost_steel.png")
var icon_ghost_water = preload("res://art/type_icons/combined/ghost_water.png")

# Grass type combinations
var icon_grass_ground = preload("res://art/type_icons/combined/grass_ground.png")
var icon_grass_ice = preload("res://art/type_icons/combined/grass_ice.png")
var icon_grass_normal = preload("res://art/type_icons/combined/grass_normal.png")
var icon_grass_poison = preload("res://art/type_icons/combined/grass_poison.png")
var icon_grass_psychic = preload("res://art/type_icons/combined/grass_psychic.png")
var icon_grass_rock = preload("res://art/type_icons/combined/grass_rock.png")
var icon_grass_steel = preload("res://art/type_icons/combined/grass_steel.png")
var icon_grass_water = preload("res://art/type_icons/combined/grass_water.png")

# Ground type combinations
var icon_ground_ice = preload("res://art/type_icons/combined/ground_ice.png")
var icon_ground_normal = preload("res://art/type_icons/combined/ground_normal.png")
var icon_ground_poison = preload("res://art/type_icons/combined/ground_poison.png")
var icon_ground_psychic = preload("res://art/type_icons/combined/ground_psychic.png")
var icon_ground_rock = preload("res://art/type_icons/combined/ground_rock.png")
var icon_ground_steel = preload("res://art/type_icons/combined/ground_steel.png")
var icon_ground_water = preload("res://art/type_icons/combined/ground_water.png")

# Ice type combinations
var icon_ice_normal = preload("res://art/type_icons/combined/ice_normal.png")
var icon_ice_poison = preload("res://art/type_icons/combined/ice_poison.png")
var icon_ice_psychic = preload("res://art/type_icons/combined/ice_psychic.png")
var icon_ice_rock = preload("res://art/type_icons/combined/ice_rock.png")
var icon_ice_steel = preload("res://art/type_icons/combined/ice_steel.png")
var icon_ice_water = preload("res://art/type_icons/combined/ice_water.png")

# Normal type combinations
var icon_normal_poison = preload("res://art/type_icons/combined/normal_poison.png")
var icon_normal_psychic = preload("res://art/type_icons/combined/normal_psychic.png")
var icon_normal_rock = preload("res://art/type_icons/combined/normal_rock.png")
var icon_normal_steel = preload("res://art/type_icons/combined/normal_steel.png")
var icon_normal_water = preload("res://art/type_icons/combined/normal_water.png")

# Poison type combinations
var icon_poison_psychic = preload("res://art/type_icons/combined/poison_psychic.png")
var icon_poison_rock = preload("res://art/type_icons/combined/poison_rock.png")
var icon_poison_steel = preload("res://art/type_icons/combined/poison_steel.png")
var icon_poison_water = preload("res://art/type_icons/combined/poison_water.png")

# Psychic type combinations
var icon_psychic_rock = preload("res://art/type_icons/combined/psychic_rock.png")
var icon_psychic_steel = preload("res://art/type_icons/combined/psychic_steel.png")
var icon_psychic_water = preload("res://art/type_icons/combined/psychic_water.png")

# Rock type combinations
var icon_rock_steel = preload("res://art/type_icons/combined/rock_steel.png")
var icon_rock_water = preload("res://art/type_icons/combined/rock_water.png")

# Steel type combinations
var icon_steel_water = preload("res://art/type_icons/combined/steel_water.png")

var game_state = {
	"attacker": null,
	"defender": null,
	"puzzle_button_grid": [],
	"game_score": 0,
	"time_elapse": 0.0,
	"game_is_active": false,
	"x_off": 200,
	"y_off": -25,
	"button_size": 100,
	"side_length": range(1,6),
	"difficulty": "easy"
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
# Increments timer while game is active
func _process(delta: float) -> void:
	if (game_state["game_is_active"]):
		increment_timer(delta)

# Called when a puzzle_button element is clicked
func _on_button_pressed(emitter):
	# Set value of attacker and defender nodes when a button is picked
	set_attacker_defender(emitter)
	
	# Both button targets must be selected
	if game_state["attacker"] != null && game_state["defender"] != null:
		# Attacker and Defender must not be the same button
		#print(game_state["attacker"].type_1, " -> ", game_state["defender"].type_1)
		if !(game_state["attacker"].id_x == game_state["defender"].id_x && game_state["attacker"].id_y == game_state["defender"].id_y):
			# If attacker successfully hits defender, remove both and check for end of game
			var attack_result = Puzzle_Button.determine_outcome(game_state["attacker"].type_1, game_state["defender"].type_1)
			if (attack_result == 1):
				hit_success()
				
				# If game over, show win UI, stop timer and hide game UI
				if (check_game_state()):
					display_win()
			elif (attack_result == 2):
				crit_hit_success()
				
				# If game over, show win UI, stop timer and hide game UI
				if (check_game_state()):
					display_win()
			
			# Reset attacker and defender when both are picked
			game_state["attacker"] = null
			game_state["defender"] = null
			
			emitter.release_focus()

# Runs when the 'Play' button has been pressed on the main menu
# Display game UI
func _on_main_menu_start_game_pressed(difficulty) -> void:
	print("Game started on " + difficulty)
	game_state["difficulty"] = difficulty
	
	generate_board()
	var timer_text = get_node("UICanvasLayer/TimerText")
	var score_text = get_node("UICanvasLayer/ScoreText")
	var score_value = get_node("UICanvasLayer/ScoreValue")
	
	timer_text.show()
	score_text.show()
	score_value.show()

# Show main menu UI, hide game/win UI and reset game board
func _on_main_menu_return_button_pressed() -> void:
	var win_text = get_node("UICanvasLayer/WinText")
	var main_menu_button = get_node("UICanvasLayer/MainMenuButton")
	var score_board = get_node("ScoreBoard")
	var timer_text = get_node("UICanvasLayer/TimerText")
	var score_text = get_node("UICanvasLayer/ScoreText")
	var score_value = get_node("UICanvasLayer/ScoreValue")
	
	reset_board()
	win_text.hide()
	main_menu_button.hide()
	score_board.hide()
	timer_text.hide()
	score_text.hide()
	score_value.hide()
	main_menu_return.emit()

# Check if game has ended
func check_game_state():
	var remaining_types = {}
	
	# Count remaining unique types
	for row in game_state["puzzle_button_grid"]:
		for button in row:
			if (button != null):
				if (button.type_1 != "Null"):
					#print(button.id_x, ", ", button.id_y, ", ", button.type_1)
					remaining_types.set(button.type_1, "")
	#print(remaining_types)
	
	# If only 1 type remains, game is won
	if (remaining_types.size() <= 1):
		return true
	return false

# Generate tiles of game board
func generate_board():
	var puzzle_button_scene = preload("res://puzzle_button.tscn")
	var game_board = get_node("ButtonContainerCanvasLayer")
	
	# reset board state
	reset_board()
	game_state["game_is_active"] = true
	
	# Place buttons on grid of size side_length
	for row in game_state["side_length"]:
		var new_row = []
		for col in game_state["side_length"]:
			# Create node instancce from scene and add to game board
			var new_puzzle_button = puzzle_button_scene.instantiate()
			
			if game_state["difficulty"] == "easy":
				new_puzzle_button = generate_button_easy(new_puzzle_button, game_board, row, col)
			elif game_state["difficulty"] == "medium":
				new_puzzle_button = generate_button_medium(new_puzzle_button, game_board, row, col)
			else:
				new_puzzle_button = generate_button_hard(new_puzzle_button, game_board, row, col)
			
			
			# Add new button to row
			new_row.push_back(new_puzzle_button)
		# Add filled new row to grid
		game_state["puzzle_button_grid"].push_back(new_row)

# Reset state of game board
func reset_board():
	var timer_text = get_node("UICanvasLayer/TimerText")
	var score_value = get_node("UICanvasLayer/ScoreValue")
	var game_board = get_node("ButtonContainerCanvasLayer")
	
	game_state["puzzle_button_grid"] = []
	game_state["game_is_active"] = false
	game_state["game_score"] = 0
	game_state["time_elapsed"] = 0.0
	score_value.text = "0"
	timer_text.text = "0.0"
	
	# Delete any remaining buttons
	for button in game_board.get_children():
		button.queue_free()

# Generate a puzzle button with a random single type for an easy difficulty game
func generate_button_easy(new_puzzle_button, game_board, row, col):
		new_puzzle_button.id_x = row
		new_puzzle_button.id_y = col
		game_board.add_child(new_puzzle_button)
		
		# Set position and size of buttons
		new_puzzle_button.position = Vector2((row * game_state["button_size"]) + game_state["x_off"], (col * game_state["button_size"]) + game_state["y_off"])
		new_puzzle_button.set_size(Vector2(game_state["button_size"], game_state["button_size"]))
		
		# Connect all buttons to receiver function
		new_puzzle_button.pressed.connect(_on_button_pressed.bind(new_puzzle_button))
		
		# Set the icon of each button
		match new_puzzle_button.type_1:
			"Normal":
				new_puzzle_button.icon = icon_normal
			"Fire":
				new_puzzle_button.icon = icon_fire
			"Water":
				new_puzzle_button.icon = icon_water
			"Grass":
				new_puzzle_button.icon = icon_grass
			"Electric":
				new_puzzle_button.icon = icon_electric
			"Ice":
				new_puzzle_button.icon = icon_ice
			"Fighting":
				new_puzzle_button.icon = icon_fighting
			"Poison":
				new_puzzle_button.icon = icon_poison
			"Ground":
				new_puzzle_button.icon = icon_ground
			"Flying":
				new_puzzle_button.icon = icon_flying
			"Psychic":
				new_puzzle_button.icon = icon_psychic
			"Bug":
				new_puzzle_button.icon = icon_bug
			"Rock":
				new_puzzle_button.icon = icon_rock
			"Ghost":
				new_puzzle_button.icon = icon_ghost
			"Dragon":
				new_puzzle_button.icon = icon_dragon
			"Dark":
				new_puzzle_button.icon = icon_dark
			"Steel":
				new_puzzle_button.icon = icon_steel
			"Fairy":
				new_puzzle_button.icon = icon_fairy
		
		return new_puzzle_button
		

# Generate a puzzle button with a random dual type for a medium difficulty game
func generate_button_medium(new_puzzle_button, game_board, row, col):
	new_puzzle_button.id_x = row
	new_puzzle_button.id_y = col
	game_board.add_child(new_puzzle_button)
	
	# Set position and size of buttons
	new_puzzle_button.position = Vector2((row * game_state["button_size"]) + game_state["x_off"], (col * game_state["button_size"]) + game_state["y_off"])
	new_puzzle_button.set_size(Vector2(game_state["button_size"], game_state["button_size"]))
	
	# Connect all buttons to receiver function
	new_puzzle_button.pressed.connect(_on_button_pressed.bind(new_puzzle_button))
	
	# Set the icon of each button
	match new_puzzle_button.type_1:
		"Normal":
			match new_puzzle_button.type_2:
				"Fire":
					new_puzzle_button.icon = icon_fire_normal
				"Water":
					new_puzzle_button.icon = icon_normal_water
				"Grass":
					new_puzzle_button.icon = icon_grass_normal
				"Electric":
					new_puzzle_button.icon = icon_electric_normal
				"Ice":
					new_puzzle_button.icon = icon_ice_normal
				"Fighting":
					new_puzzle_button.icon = icon_fighting_normal
				"Poison":
					new_puzzle_button.icon = icon_normal_poison
				"Ground":
					new_puzzle_button.icon = icon_ground_normal
				"Flying":
					new_puzzle_button.icon = icon_flying_normal
				"Psychic":
					new_puzzle_button.icon = icon_normal_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_normal
				"Rock":
					new_puzzle_button.icon = icon_normal_rock
				"Ghost":
					new_puzzle_button.icon = icon_ghost_normal
				"Dragon":
					new_puzzle_button.icon = icon_dragon_normal
				"Dark":
					new_puzzle_button.icon = icon_dark_normal
				"Steel":
					new_puzzle_button.icon = icon_normal_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_normal
				_:
					new_puzzle_button.icon = icon_normal
		"Fire":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_fire_normal
				"Water":
					new_puzzle_button.icon = icon_fire_water
				"Grass":
					new_puzzle_button.icon = icon_fire_grass
				"Electric":
					new_puzzle_button.icon = icon_electric_fire
				"Ice":
					new_puzzle_button.icon = icon_fire_ice
				"Fighting":
					new_puzzle_button.icon = icon_fighting_fire
				"Poison":
					new_puzzle_button.icon = icon_fire_poison
				"Ground":
					new_puzzle_button.icon = icon_fire_ground
				"Flying":
					new_puzzle_button.icon = icon_fire_flying
				"Psychic":
					new_puzzle_button.icon = icon_fire_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_fire
				"Rock":
					new_puzzle_button.icon = icon_fire_rock
				"Ghost":
					new_puzzle_button.icon = icon_fire_ghost
				"Dragon":
					new_puzzle_button.icon = icon_dragon_fire
				"Dark":
					new_puzzle_button.icon = icon_dark_fire
				"Steel":
					new_puzzle_button.icon = icon_fire_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_fire
				_:
					new_puzzle_button.icon = icon_fire
		"Water":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_normal_water
				"Fire":
					new_puzzle_button.icon = icon_fire_water
				"Grass":
					new_puzzle_button.icon = icon_grass_water
				"Electric":
					new_puzzle_button.icon = icon_electric_water
				"Ice":
					new_puzzle_button.icon = icon_ice_water
				"Fighting":
					new_puzzle_button.icon = icon_fighting_water
				"Poison":
					new_puzzle_button.icon = icon_poison_water
				"Ground":
					new_puzzle_button.icon = icon_ground_water
				"Flying":
					new_puzzle_button.icon = icon_flying_water
				"Psychic":
					new_puzzle_button.icon = icon_psychic_water
				"Bug":
					new_puzzle_button.icon = icon_bug_water
				"Rock":
					new_puzzle_button.icon = icon_rock_water
				"Ghost":
					new_puzzle_button.icon = icon_ghost_water
				"Dragon":
					new_puzzle_button.icon = icon_dragon_water
				"Dark":
					new_puzzle_button.icon = icon_dark_water
				"Steel":
					new_puzzle_button.icon = icon_steel_water
				"Fairy":
					new_puzzle_button.icon = icon_fairy_water
				_:
					new_puzzle_button.icon = icon_water
		"Grass":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_grass_normal
				"Fire":
					new_puzzle_button.icon = icon_fire_grass
				"Water":
					new_puzzle_button.icon = icon_grass_water
				"Electric":
					new_puzzle_button.icon = icon_electric_grass
				"Ice":
					new_puzzle_button.icon = icon_grass_ice
				"Fighting":
					new_puzzle_button.icon = icon_fighting_grass
				"Poison":
					new_puzzle_button.icon = icon_grass_poison
				"Ground":
					new_puzzle_button.icon = icon_grass_ground
				"Flying":
					new_puzzle_button.icon = icon_flying_grass
				"Psychic":
					new_puzzle_button.icon = icon_grass_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_grass
				"Rock":
					new_puzzle_button.icon = icon_grass_rock
				"Ghost":
					new_puzzle_button.icon = icon_ghost_grass
				"Dragon":
					new_puzzle_button.icon = icon_dragon_grass
				"Dark":
					new_puzzle_button.icon = icon_dark_grass
				"Steel":
					new_puzzle_button.icon = icon_grass_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_grass
				_:
					new_puzzle_button.icon = icon_grass
		"Electric":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_electric_normal
				"Fire":
					new_puzzle_button.icon = icon_electric_fire
				"Water":
					new_puzzle_button.icon = icon_electric_water
				"Grass":
					new_puzzle_button.icon = icon_electric_grass
				"Ice":
					new_puzzle_button.icon = icon_electric_ice
				"Fighting":
					new_puzzle_button.icon = icon_electric_fighting
				"Poison":
					new_puzzle_button.icon = icon_electric_poison
				"Ground":
					new_puzzle_button.icon = icon_electric_ground
				"Flying":
					new_puzzle_button.icon = icon_electric_flying
				"Psychic":
					new_puzzle_button.icon = icon_electric_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_electric
				"Rock":
					new_puzzle_button.icon = icon_electric_rock
				"Ghost":
					new_puzzle_button.icon = icon_electric_ghost
				"Dragon":
					new_puzzle_button.icon = icon_dragon_electric
				"Dark":
					new_puzzle_button.icon = icon_dark_electric
				"Steel":
					new_puzzle_button.icon = icon_electric_steel
				"Fairy":
					new_puzzle_button.icon = icon_electric_fairy
				_:
					new_puzzle_button.icon = icon_electric
		"Ice":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_ice_normal
				"Fire":
					new_puzzle_button.icon = icon_fire_ice
				"Water":
					new_puzzle_button.icon = icon_ice_water
				"Grass":
					new_puzzle_button.icon = icon_grass_ice
				"Electric":
					new_puzzle_button.icon = icon_electric_ice
				"Fighting":
					new_puzzle_button.icon = icon_fighting_ice
				"Poison":
					new_puzzle_button.icon = icon_ice_poison
				"Ground":
					new_puzzle_button.icon = icon_ground_ice
				"Flying":
					new_puzzle_button.icon = icon_flying_ice
				"Psychic":
					new_puzzle_button.icon = icon_ice_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_ice
				"Rock":
					new_puzzle_button.icon = icon_ice_rock
				"Ghost":
					new_puzzle_button.icon = icon_ghost_ice
				"Dragon":
					new_puzzle_button.icon = icon_dragon_ice
				"Dark":
					new_puzzle_button.icon = icon_dark_ice
				"Steel":
					new_puzzle_button.icon = icon_ice_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_ice
				_:
					new_puzzle_button.icon = icon_ice
		"Fighting":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_fighting_normal
				"Fire":
					new_puzzle_button.icon = icon_fighting_fire
				"Water":
					new_puzzle_button.icon = icon_fighting_water
				"Grass":
					new_puzzle_button.icon = icon_fighting_grass
				"Electric":
					new_puzzle_button.icon = icon_electric_fighting
				"Ice":
					new_puzzle_button.icon = icon_fighting_ice
				"Poison":
					new_puzzle_button.icon = icon_fighting_poison
				"Ground":
					new_puzzle_button.icon = icon_fighting_ground
				"Flying":
					new_puzzle_button.icon = icon_fighting_flying
				"Psychic":
					new_puzzle_button.icon = icon_fighting_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_fighting
				"Rock":
					new_puzzle_button.icon = icon_fighting_rock
				"Ghost":
					new_puzzle_button.icon = icon_fighting_ghost
				"Dragon":
					new_puzzle_button.icon = icon_dragon_fighting
				"Dark":
					new_puzzle_button.icon = icon_dark_fighting
				"Steel":
					new_puzzle_button.icon = icon_fighting_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_fighting
				_:
					new_puzzle_button.icon = icon_fighting
		"Poison":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_normal_poison
				"Fire":
					new_puzzle_button.icon = icon_fire_poison
				"Water":
					new_puzzle_button.icon = icon_poison_water
				"Grass":
					new_puzzle_button.icon = icon_grass_poison
				"Electric":
					new_puzzle_button.icon = icon_electric_poison
				"Ice":
					new_puzzle_button.icon = icon_ice_poison
				"Fighting":
					new_puzzle_button.icon = icon_fighting_poison
				"Ground":
					new_puzzle_button.icon = icon_ground_poison
				"Flying":
					new_puzzle_button.icon = icon_flying_poison
				"Psychic":
					new_puzzle_button.icon = icon_poison_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_poison
				"Rock":
					new_puzzle_button.icon = icon_poison_rock
				"Ghost":
					new_puzzle_button.icon = icon_ghost_poison
				"Dragon":
					new_puzzle_button.icon = icon_dragon_poison
				"Dark":
					new_puzzle_button.icon = icon_dark_poison
				"Steel":
					new_puzzle_button.icon = icon_poison_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_poison
				_:
					new_puzzle_button.icon = icon_poison
		"Ground":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_ground_normal
				"Fire":
					new_puzzle_button.icon = icon_fire_ground
				"Water":
					new_puzzle_button.icon = icon_ground_water
				"Grass":
					new_puzzle_button.icon = icon_grass_ground
				"Electric":
					new_puzzle_button.icon = icon_electric_ground
				"Ice":
					new_puzzle_button.icon = icon_ground_ice
				"Fighting":
					new_puzzle_button.icon = icon_fighting_ground
				"Poison":
					new_puzzle_button.icon = icon_ground_poison
				"Flying":
					new_puzzle_button.icon = icon_flying_ground
				"Psychic":
					new_puzzle_button.icon = icon_ground_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_ground
				"Rock":
					new_puzzle_button.icon = icon_ground_rock
				"Ghost":
					new_puzzle_button.icon = icon_ghost_ground
				"Dragon":
					new_puzzle_button.icon = icon_dragon_ground
				"Dark":
					new_puzzle_button.icon = icon_dark_ground
				"Steel":
					new_puzzle_button.icon = icon_ground_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_ground
				_:
					new_puzzle_button.icon = icon_ground
		"Flying":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_flying_normal
				"Fire":
					new_puzzle_button.icon = icon_fire_flying
				"Water":
					new_puzzle_button.icon = icon_flying_water
				"Grass":
					new_puzzle_button.icon = icon_flying_grass
				"Electric":
					new_puzzle_button.icon = icon_electric_flying
				"Ice":
					new_puzzle_button.icon = icon_flying_ice
				"Fighting":
					new_puzzle_button.icon = icon_fighting_flying
				"Poison":
					new_puzzle_button.icon = icon_flying_poison
				"Ground":
					new_puzzle_button.icon = icon_flying_ground
				"Psychic":
					new_puzzle_button.icon = icon_flying_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_flying
				"Rock":
					new_puzzle_button.icon = icon_flying_rock
				"Ghost":
					new_puzzle_button.icon = icon_flying_ghost
				"Dragon":
					new_puzzle_button.icon = icon_dragon_flying
				"Dark":
					new_puzzle_button.icon = icon_dark_flying
				"Steel":
					new_puzzle_button.icon = icon_flying_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_flying
				_:
					new_puzzle_button.icon = icon_flying
		"Psychic":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_normal_psychic
				"Fire":
					new_puzzle_button.icon = icon_fire_psychic
				"Water":
					new_puzzle_button.icon = icon_psychic_water
				"Grass":
					new_puzzle_button.icon = icon_grass_psychic
				"Electric":
					new_puzzle_button.icon = icon_electric_psychic
				"Ice":
					new_puzzle_button.icon = icon_ice_psychic
				"Fighting":
					new_puzzle_button.icon = icon_fighting_psychic
				"Poison":
					new_puzzle_button.icon = icon_poison_psychic
				"Ground":
					new_puzzle_button.icon = icon_ground_psychic
				"Flying":
					new_puzzle_button.icon = icon_flying_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_psychic
				"Rock":
					new_puzzle_button.icon = icon_psychic_rock
				"Ghost":
					new_puzzle_button.icon = icon_ghost_psychic
				"Dragon":
					new_puzzle_button.icon = icon_dragon_psychic
				"Dark":
					new_puzzle_button.icon = icon_dark_psychic
				"Steel":
					new_puzzle_button.icon = icon_psychic_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_psychic
				_:
					new_puzzle_button.icon = icon_psychic
		"Bug":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_bug_normal
				"Fire":
					new_puzzle_button.icon = icon_bug_fire
				"Water":
					new_puzzle_button.icon = icon_bug_water
				"Grass":
					new_puzzle_button.icon = icon_bug_grass
				"Electric":
					new_puzzle_button.icon = icon_bug_electric
				"Ice":
					new_puzzle_button.icon = icon_bug_ice
				"Fighting":
					new_puzzle_button.icon = icon_bug_fighting
				"Poison":
					new_puzzle_button.icon = icon_bug_poison
				"Ground":
					new_puzzle_button.icon = icon_bug_ground
				"Flying":
					new_puzzle_button.icon = icon_bug_flying
				"Psychic":
					new_puzzle_button.icon = icon_bug_psychic
				"Rock":
					new_puzzle_button.icon = icon_bug_rock
				"Ghost":
					new_puzzle_button.icon = icon_bug_ghost
				"Dragon":
					new_puzzle_button.icon = icon_bug_dragon
				"Dark":
					new_puzzle_button.icon = icon_bug_dark
				"Steel":
					new_puzzle_button.icon = icon_bug_steel
				"Fairy":
					new_puzzle_button.icon = icon_bug_fairy
				_:
					new_puzzle_button.icon = icon_bug
		"Rock":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_normal_rock
				"Fire":
					new_puzzle_button.icon = icon_fire_rock
				"Water":
					new_puzzle_button.icon = icon_rock_water
				"Grass":
					new_puzzle_button.icon = icon_grass_rock
				"Electric":
					new_puzzle_button.icon = icon_electric_rock
				"Ice":
					new_puzzle_button.icon = icon_ice_rock
				"Fighting":
					new_puzzle_button.icon = icon_fighting_rock
				"Poison":
					new_puzzle_button.icon = icon_poison_rock
				"Ground":
					new_puzzle_button.icon = icon_ground_rock
				"Flying":
					new_puzzle_button.icon = icon_flying_rock
				"Psychic":
					new_puzzle_button.icon = icon_psychic_rock
				"Bug":
					new_puzzle_button.icon = icon_bug_rock
				"Ghost":
					new_puzzle_button.icon = icon_ghost_rock
				"Dragon":
					new_puzzle_button.icon = icon_dragon_rock
				"Dark":
					new_puzzle_button.icon = icon_dark_rock
				"Steel":
					new_puzzle_button.icon = icon_rock_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_rock
				_:
					new_puzzle_button.icon = icon_rock
		"Ghost":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_ghost_normal
				"Fire":
					new_puzzle_button.icon = icon_fire_ghost
				"Water":
					new_puzzle_button.icon = icon_ghost_water
				"Grass":
					new_puzzle_button.icon = icon_ghost_grass
				"Electric":
					new_puzzle_button.icon = icon_electric_ghost
				"Ice":
					new_puzzle_button.icon = icon_ghost_ice
				"Fighting":
					new_puzzle_button.icon = icon_fighting_ghost
				"Poison":
					new_puzzle_button.icon = icon_ghost_poison
				"Ground":
					new_puzzle_button.icon = icon_ghost_ground
				"Flying":
					new_puzzle_button.icon = icon_flying_ghost
				"Psychic":
					new_puzzle_button.icon = icon_ghost_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_ghost
				"Rock":
					new_puzzle_button.icon = icon_ghost_rock
				"Dragon":
					new_puzzle_button.icon = icon_dragon_ghost
				"Dark":
					new_puzzle_button.icon = icon_dark_ghost
				"Steel":
					new_puzzle_button.icon = icon_ghost_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_ghost
				_:
					new_puzzle_button.icon = icon_ghost
		"Dragon":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_dragon_normal
				"Fire":
					new_puzzle_button.icon = icon_dragon_fire
				"Water":
					new_puzzle_button.icon = icon_dragon_water
				"Grass":
					new_puzzle_button.icon = icon_dragon_grass
				"Electric":
					new_puzzle_button.icon = icon_dragon_electric
				"Ice":
					new_puzzle_button.icon = icon_dragon_ice
				"Fighting":
					new_puzzle_button.icon = icon_dragon_fighting
				"Poison":
					new_puzzle_button.icon = icon_dragon_poison
				"Ground":
					new_puzzle_button.icon = icon_dragon_ground
				"Flying":
					new_puzzle_button.icon = icon_dragon_flying
				"Psychic":
					new_puzzle_button.icon = icon_dragon_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_dragon
				"Rock":
					new_puzzle_button.icon = icon_dragon_rock
				"Ghost":
					new_puzzle_button.icon = icon_dragon_ghost
				"Dark":
					new_puzzle_button.icon = icon_dark_dragon
				"Steel":
					new_puzzle_button.icon = icon_dragon_steel
				"Fairy":
					new_puzzle_button.icon = icon_dragon_fairy
				_:
					new_puzzle_button.icon = icon_dragon
		"Dark":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_dark_normal
				"Fire":
					new_puzzle_button.icon = icon_dark_fire
				"Water":
					new_puzzle_button.icon = icon_dark_water
				"Grass":
					new_puzzle_button.icon = icon_dark_grass
				"Electric":
					new_puzzle_button.icon = icon_dark_electric
				"Ice":
					new_puzzle_button.icon = icon_dark_ice
				"Fighting":
					new_puzzle_button.icon = icon_dark_fighting
				"Poison":
					new_puzzle_button.icon = icon_dark_poison
				"Ground":
					new_puzzle_button.icon = icon_dark_ground
				"Flying":
					new_puzzle_button.icon = icon_dark_flying
				"Psychic":
					new_puzzle_button.icon = icon_dark_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_dark
				"Rock":
					new_puzzle_button.icon = icon_dark_rock
				"Ghost":
					new_puzzle_button.icon = icon_dark_ghost
				"Dragon":
					new_puzzle_button.icon = icon_dark_dragon
				"Steel":
					new_puzzle_button.icon = icon_dark_steel
				"Fairy":
					new_puzzle_button.icon = icon_dark_fairy
				_:
					new_puzzle_button.icon = icon_dark
		"Steel":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_normal_steel
				"Fire":
					new_puzzle_button.icon = icon_fire_steel
				"Water":
					new_puzzle_button.icon = icon_steel_water
				"Grass":
					new_puzzle_button.icon = icon_grass_steel
				"Electric":
					new_puzzle_button.icon = icon_electric_steel
				"Ice":
					new_puzzle_button.icon = icon_ice_steel
				"Fighting":
					new_puzzle_button.icon = icon_fighting_steel
				"Poison":
					new_puzzle_button.icon = icon_poison_steel
				"Ground":
					new_puzzle_button.icon = icon_ground_steel
				"Flying":
					new_puzzle_button.icon = icon_flying_steel
				"Psychic":
					new_puzzle_button.icon = icon_psychic_steel
				"Bug":
					new_puzzle_button.icon = icon_bug_steel
				"Rock":
					new_puzzle_button.icon = icon_rock_steel
				"Ghost":
					new_puzzle_button.icon = icon_ghost_steel
				"Dragon":
					new_puzzle_button.icon = icon_dragon_steel
				"Dark":
					new_puzzle_button.icon = icon_dark_steel
				"Fairy":
					new_puzzle_button.icon = icon_fairy_steel
				_:
					new_puzzle_button.icon = icon_steel
		"Fairy":
			match new_puzzle_button.type_2:
				"Normal":
					new_puzzle_button.icon = icon_fairy_normal
				"Fire":
					new_puzzle_button.icon = icon_fairy_fire
				"Water":
					new_puzzle_button.icon = icon_fairy_water
				"Grass":
					new_puzzle_button.icon = icon_fairy_grass
				"Electric":
					new_puzzle_button.icon = icon_electric_fairy
				"Ice":
					new_puzzle_button.icon = icon_fairy_ice
				"Fighting":
					new_puzzle_button.icon = icon_fairy_fighting
				"Poison":
					new_puzzle_button.icon = icon_fairy_poison
				"Ground":
					new_puzzle_button.icon = icon_fairy_ground
				"Flying":
					new_puzzle_button.icon = icon_fairy_flying
				"Psychic":
					new_puzzle_button.icon = icon_fairy_psychic
				"Bug":
					new_puzzle_button.icon = icon_bug_fairy
				"Rock":
					new_puzzle_button.icon = icon_fairy_rock
				"Ghost":
					new_puzzle_button.icon = icon_fairy_ghost
				"Dragon":
					new_puzzle_button.icon = icon_dragon_fairy
				"Dark":
					new_puzzle_button.icon = icon_dark_fairy
				"Steel":
					new_puzzle_button.icon = icon_fairy_steel
				_:
					new_puzzle_button.icon = icon_fairy
	
	return new_puzzle_button

# Generate a puzzle button with a random pokemon for a hard difficulty game
func generate_button_hard(new_puzzle_button, game_board, row, col):
	pass

# Set value of attacker and defender
func set_attacker_defender(emitter):
	if game_state["attacker"] == null:
		game_state["attacker"] = emitter
	else:
		game_state["defender"] = emitter

# Resolve successful hit
func hit_success():
	# Remove selected buttons
	game_state["attacker"].hide()
	game_state["defender"].hide()
	
	# Remove buttons from grid
	game_state["puzzle_button_grid"][game_state["attacker"].id_x-1][game_state["attacker"].id_y-1].type_1 = "Null"
	game_state["puzzle_button_grid"][game_state["defender"].id_x-1][game_state["defender"].id_y-1].type_1 = "Null"
	
	# Increment score
	var score_value = get_node("UICanvasLayer/ScoreValue")
	game_state["game_score"] += 10
	score_value.text = str(game_state["game_score"])

# Resolve successful crit hit
func crit_hit_success():
	#TODO add recursive search for adjacent tiles
	var org_x = game_state["defender"].id_x
	var org_y = game_state["defender"].id_y
	
	#print(org_x, ", ", org_y)
	recursive_crit_search(org_x, org_y)
	
	
	# Remove selected buttons
	game_state["attacker"].hide()
	game_state["defender"].hide()
	
	# Remove buttons from grid
	game_state["puzzle_button_grid"][game_state["attacker"].id_x-1][game_state["attacker"].id_y-1].type_1 = "Null"
	game_state["puzzle_button_grid"][game_state["defender"].id_x-1][game_state["defender"].id_y-1].type_1 = "Null"
	
	# Increment score
	var score_value = get_node("UICanvasLayer/ScoreValue")
	game_state["game_score"] += 30
	score_value.text = str(game_state["game_score"])

func recursive_crit_search(curr_x, curr_y):
	var current_tile = game_state["puzzle_button_grid"][curr_x-1][curr_y-1]
	#print("curr: ", current_tile.type_1)
	
	while (Puzzle_Button.determine_outcome(game_state["attacker"].type_1, current_tile.type_1) == 2):
		current_tile.hide()
		game_state["puzzle_button_grid"][curr_x-1][curr_y-1].type_1 = "Null"
		
		if (curr_y-1 > 0):
			#print("up: ", game_state["puzzle_button_grid"][curr_x-1][curr_y-2].type_1)
			recursive_crit_search(curr_x, curr_y-1)
		
		if (curr_y-1 < game_state["side_length"].size()-1):
			#print("down: ", game_state["puzzle_button_grid"][curr_x-1][curr_y].type_1)
			recursive_crit_search(curr_x, curr_y+1)
		
		if (curr_x-1 > 0):
			#print("left: ", game_state["puzzle_button_grid"][curr_x-2][curr_y-1].type_1)
			recursive_crit_search(curr_x-1, curr_y)
		
		if (curr_x-1 < game_state["side_length"].size()-1):
			#print("right: ", game_state["puzzle_button_grid"][curr_x][curr_y-1].type_1)
			recursive_crit_search(curr_x+1, curr_y)
		
		break
	

# Display win state UI
func display_win():
	game_state["game_is_active"] = false
	var win_text = get_node("UICanvasLayer/WinText")
	var main_menu_button = get_node("UICanvasLayer/MainMenuButton")
	var score_board = get_node("ScoreBoard")
	win_text.show()
	main_menu_button.show()
	score_board.show()
	
	var attack_bonus = get_node("ScoreBoard/AttackBonusValue")
	var time_bonus = get_node("ScoreBoard/TimeBonusValue")
	var final_score = get_node("ScoreBoard/FinalScoreValue")
	
	attack_bonus.text = str(game_state["game_score"])
	time_bonus.text =  str(60 - snapped(game_state["time_elapsed"], 1))
	final_score.text = str(game_state["game_score"] + ( 60 - snapped(game_state["time_elapsed"], 1) ))

func increment_timer(delta):
	var timer_text = get_node("UICanvasLayer/TimerText")
	game_state["time_elapsed"] += delta
	timer_text.text = str(snapped(game_state["time_elapsed"], 1))
