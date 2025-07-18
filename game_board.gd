extends CanvasLayer

signal main_menu_return

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
	"side_length": range(1,6)
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
func _on_main_menu_start_game_pressed() -> void:
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
			new_puzzle_button = generate_button(new_puzzle_button, game_board, row, col)
			
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

# Generate a puzzle button with a random type
func generate_button(new_puzzle_button, game_board, row, col):
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
