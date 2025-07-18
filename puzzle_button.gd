extends Button

class_name Puzzle_Button

var id_x
var id_y

var type_1
var type_2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var button_type = randi() % 18 + 1
	#print(button_type)
	
	match button_type:
		1:
			type_1 = "Normal"
		2:
			type_1 = "Fire"
		3:
			type_1 = "Water"
		4:
			type_1 = "Grass"
		5: 
			type_1 = "Electric"
		6:
			type_1 = "Ice"
		7:
			type_1 = "Fighting"
		8:
			type_1 = "Poison"
		9:
			type_1 = "Ground"
		10:
			type_1 = "Flying"
		11:
			type_1 = "Psychic"
		12:
			type_1 = "Bug"
		13:
			type_1 = "Rock"
		14:
			type_1 = "Ghost"
		15:
			type_1 = "Dragon"
		16:
			type_1 = "Dark"
		17: 
			type_1 = "Steel"
		18:
			type_1 = "Fairy"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
# Release mouse focus if clicking outside button
func _input(event: InputEvent):
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == 1:
		var evLocal = make_input_local(event)
		if !Rect2(Vector2(0,0), size).has_point(evLocal.position):
			release_focus()
	
# Determine the outcome of two pieces being selected
static func determine_outcome(attacker_type, defender_type):
	var result = -1
	
	match attacker_type:
		"Normal":
			result = normal_attacker(defender_type)
		"Fire":
			result = fire_attacker(defender_type)
		"Water":
			result = water_attacker(defender_type)
		"Grass":
			result = grass_attacker(defender_type)
		"Electric":
			result = electric_attacker(defender_type)
		"Ice":
			result = ice_attacker(defender_type)
		"Fighting":
			result = fighting_attacker(defender_type)
		"Poison":
			result = poison_attacker(defender_type)
		"Ground":
			result = ground_attacker(defender_type)
		"Flying": 
			result = flying_attacker(defender_type)
		"Psychic":
			result = psychic_attacker(defender_type)
		"Bug":
			result = bug_attacker(defender_type)
		"Rock":
			result = rock_attacker(defender_type)
		"Ghost":
			result = ghost_attacker(defender_type)
		"Dragon":
			result = dragon_attacker(defender_type)
		"Dark":
			result = dark_attacker(defender_type)
		"Steel":
			result = steel_attacker(defender_type)
		"Fairy":
			result = fairy_attacker(defender_type)
	
	return result

# Determine the outcome of two pieces being selected
static func determine_outcome_dual_type(attacker_type_1, attacker_type_2, defender_type_1, defender_type_2):
	var result = 0
	
	# 1 to 1
	match attacker_type_1:
		"Normal":
			result += normal_attacker(defender_type_1)
		"Fire":
			result += fire_attacker(defender_type_1)
		"Water":
			result += water_attacker(defender_type_1)
		"Grass":
			result += grass_attacker(defender_type_1)
		"Electric":
			result += electric_attacker(defender_type_1)
		"Ice":
			result += ice_attacker(defender_type_1)
		"Fighting":
			result += fighting_attacker(defender_type_1)
		"Poison":
			result += poison_attacker(defender_type_1)
		"Ground":
			result += ground_attacker(defender_type_1)
		"Flying": 
			result += flying_attacker(defender_type_1)
		"Psychic":
			result += psychic_attacker(defender_type_1)
		"Bug":
			result += bug_attacker(defender_type_1)
		"Rock":
			result += rock_attacker(defender_type_1)
		"Ghost":
			result += ghost_attacker(defender_type_1)
		"Dragon":
			result += dragon_attacker(defender_type_1)
		"Dark":
			result += dark_attacker(defender_type_1)
		"Steel":
			result += steel_attacker(defender_type_1)
		"Fairy":
			result += fairy_attacker(defender_type_1)
	
	# 1 to 2
	match attacker_type_1:
		"Normal":
			result += normal_attacker(defender_type_2)
		"Fire":
			result += fire_attacker(defender_type_2)
		"Water":
			result += water_attacker(defender_type_2)
		"Grass":
			result += grass_attacker(defender_type_2)
		"Electric":
			result += electric_attacker(defender_type_2)
		"Ice":
			result += ice_attacker(defender_type_2)
		"Fighting":
			result += fighting_attacker(defender_type_2)
		"Poison":
			result += poison_attacker(defender_type_2)
		"Ground":
			result += ground_attacker(defender_type_2)
		"Flying": 
			result += flying_attacker(defender_type_2)
		"Psychic":
			result += psychic_attacker(defender_type_2)
		"Bug":
			result += bug_attacker(defender_type_2)
		"Rock":
			result += rock_attacker(defender_type_2)
		"Ghost":
			result += ghost_attacker(defender_type_2)
		"Dragon":
			result += dragon_attacker(defender_type_2)
		"Dark":
			result += dark_attacker(defender_type_2)
		"Steel":
			result += steel_attacker(defender_type_2)
		"Fairy":
			result += fairy_attacker(defender_type_2)
	
	# 2 to 1
	match attacker_type_2:
		"Normal":
			result += normal_attacker(defender_type_1)
		"Fire":
			result += fire_attacker(defender_type_1)
		"Water":
			result += water_attacker(defender_type_1)
		"Grass":
			result += grass_attacker(defender_type_1)
		"Electric":
			result += electric_attacker(defender_type_1)
		"Ice":
			result += ice_attacker(defender_type_1)
		"Fighting":
			result += fighting_attacker(defender_type_1)
		"Poison":
			result += poison_attacker(defender_type_1)
		"Ground":
			result += ground_attacker(defender_type_1)
		"Flying": 
			result += flying_attacker(defender_type_1)
		"Psychic":
			result += psychic_attacker(defender_type_1)
		"Bug":
			result += bug_attacker(defender_type_1)
		"Rock":
			result += rock_attacker(defender_type_1)
		"Ghost":
			result += ghost_attacker(defender_type_1)
		"Dragon":
			result += dragon_attacker(defender_type_1)
		"Dark":
			result += dark_attacker(defender_type_1)
		"Steel":
			result += steel_attacker(defender_type_1)
		"Fairy":
			result += fairy_attacker(defender_type_1)
			
	# 2 to 2
	match attacker_type_2:
		"Normal":
			result += normal_attacker(defender_type_2)
		"Fire":
			result += fire_attacker(defender_type_2)
		"Water":
			result += water_attacker(defender_type_2)
		"Grass":
			result += grass_attacker(defender_type_2)
		"Electric":
			result += electric_attacker(defender_type_2)
		"Ice":
			result += ice_attacker(defender_type_2)
		"Fighting":
			result += fighting_attacker(defender_type_2)
		"Poison":
			result += poison_attacker(defender_type_2)
		"Ground":
			result += ground_attacker(defender_type_2)
		"Flying": 
			result += flying_attacker(defender_type_2)
		"Psychic":
			result += psychic_attacker(defender_type_2)
		"Bug":
			result += bug_attacker(defender_type_2)
		"Rock":
			result += rock_attacker(defender_type_2)
		"Ghost":
			result += ghost_attacker(defender_type_2)
		"Dragon":
			result += dragon_attacker(defender_type_2)
		"Dark":
			result += dark_attacker(defender_type_2)
		"Steel":
			result += steel_attacker(defender_type_2)
		"Fairy":
			result += fairy_attacker(defender_type_2)
	
	return result

# Helper function of determine_outcome for normal attacker case
static func normal_attacker(defender):
	match defender:
		# Resist
		"Rock", "Steel", "Ghost":
			return 0
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for fire attacker case
static func fire_attacker(defender):
	match defender:
		# Resist
		"Fire", "Water", "Rock", "Dragon":
			return 0
		# Super
		"Grass", "Ice", "Bug", "Steel":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for water attacker case
static func water_attacker(defender):
	match defender:
		# Resist
		"Water", "Grass", "Dragon":
			return 0
		# Super
		"Fire", "Ground", "Rock":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for grass attacker case
static func grass_attacker(defender):
	match defender:
		# Resist
		"Fire", "Grass", "Poison", "Flying", "Bug", "Dragon", "Steel":
			return 0
		# Super
		"Water", "Ground", "Rock":
			return 2
		_:
		# Neutral
			return 1

# Helper function of determine_outcome for electric attacker case
static func electric_attacker(defender):
	match defender:
		# Resist
		"Grass", "Electric", "Ground", "Dragon":
			return 0
		# Super
		"Water", "Flying":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for ice attacker case
static func ice_attacker(defender):
	match defender:
		# Resist
		"Fire", "Water", "Ice", "Steel":
			return 0
		# Super
		"Grass", "Ground", "Flying", "Dragon":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for fighting attacker case
static func fighting_attacker(defender):
	match defender:
		# Resist
		"Poison", "Flying", "Psychic", "Bug", "Fairy":
			return 0
		# Super
		"Normal", "Ice", "Rock", "Dark", "Steel":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for poison attacker case
static func poison_attacker(defender):
	match defender:
		# Resist
		"Poison", "Ground", "Rock", "Ghost", "Steel":
			return 0
		# Super
		"Grass", "Fairy":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for ground attacker case
static func ground_attacker(defender):
	match defender:
		# Resist
		"Grass", "Flying", "Bug":
			return 0
		# Super
		"Fire", "Electric", "Poison", "Rock", "Steel":
			return 2
		# Neutral
		_:
			return 1
			

# Helper function of determine_outcome for flying attacker case
static func flying_attacker(defender):
	match defender:
		# Resist
		"Electric", "Rock", "Steel":
			return 0
		# Super
		"Grass", "Fighting", "Bug":
			return 2
		# Neutral
		_:
			return 1
			

# Helper function of determine_outcome for psychic attacker case
static func psychic_attacker(defender):
	match defender:
		# Resist
		"Psychic", "Dark", "Steel":
			return 0
		# Super
		"Fighting", "Poison", "Bug":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for bug attacker case
static func bug_attacker(defender):
	match defender:
		# Resist
		"Fire", "Fighting", "Poison", "Flying", "Ghost", "Steel", "Fairy":
			return 0
		# Super
		"Grass", "Psychic", "Dark":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for rock attacker case
static func rock_attacker(defender):
	match defender:
		# Resist
		"Fighting", "Ground", "Steel":
			return 0
		# Super
		"Fire", "Ice", "Flying", "Bug":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for rock attacker case
static func ghost_attacker(defender):
	match defender:
		# Resist
		"Normal", "Dark":
			return 0
		# Super
		"Psychic", "Ghost":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for dragon attacker case
static func dragon_attacker(defender):
	match defender:
		# Resist
		"Steel", "Fairy":
			return 0
		# Super
		"Dragon":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for dark attacker case
static func dark_attacker(defender):
	match defender:
		# Resist
		"Fighting", "Dark", "Fairy":
			return 0
		# Super
		"Psychic", "Ghost":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for steel attacker case
static func steel_attacker(defender):
	match defender:
		# Resist
		"Fire", "Water", "Electric", "Steel":
			return 0
		# Super
		"Ice", "Rock", "Fairy":
			return 2
		# Neutral
		_:
			return 1

# Helper function of determine_outcome for fairy attacker case
static func fairy_attacker(defender):
	match defender:
		# Resist
		"Fire", "Poison", "Steel":
			return 0
		# Super
		"Fighting", "Ghost", "Dragon":
			return 2
		# Neutral
		_:
			return 1
