extends Button

class_name Puzzle_Button

var id_x
var id_y

var type_1
var type_2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var button_type = randi() % 3 + 1
	#print(button_type)
	
	match button_type:
		1:
			type_1 = "Fire"
		2:
			type_1 = "Water"
		3:
			type_1 = "Grass"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
# Determine the outcome of two pieces being selected
static func determine_outcome(attacker_type, defender_type):
	var result = false
	
	match attacker_type:
		"Fire":
			result = fire_attacker(defender_type)
		"Water":
			result = water_attacker(defender_type)
		"Grass":
			result = grass_attacker(defender_type)
	
	return result

# Helper function of determine_outcome for fire attacker case
static func fire_attacker(defender):
	match defender:
		"Fire":
			return false
		"Water":
			return false
		"Grass":
			return true

# Helper function of determine_outcome for water attacker case
static func water_attacker(defender):
	match defender:
		"Fire":
			return true
		"Water":
			return false
		"Grass":
			return false

# Helper function of determine_outcome for grass attacker case
static func grass_attacker(defender):
	match defender:
		"Fire":
			return false
		"Water":
			return true
		"Grass":
			return false
