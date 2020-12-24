extends Control

# container holding the building buttons
onready var buildingButtons : Node = get_node("BuildingButtons")
 
# text displaying the food and metal resources
onready var foodMetalText : Label = get_node("FoodMetalText")
 
# text displaying the oxygen and energy resources
onready var oxygenEnergyText : Label = get_node("OxygenEnergyText")
 
# text showing our current turn
onready var curTurnText : Label = get_node("TurnText")
 
# game manager object in order to access those functions and values
onready var gameManager : Node = get_node("/root/initial_scene")

# ===Begin Functions===
# called when a turn is over - resets the UI
func on_end_turn ():
 
	# updates the cur turn text and enable the building buttons
	curTurnText.text = "Turn: " + str(gameManager.curTurn)
	buildingButtons.visible = true

# updates the resource text to show the current values
func update_resource_text ():
 
	# set the food and metal text
	var foodMetal = ""
	
	# sets the text, e.g. "13 (+5)"
	foodMetal += str(gameManager.curFood) + " (" + ("+" if gameManager.foodPerTurn >= 0 else "") + str(gameManager.foodPerTurn) + ")"
	foodMetal += "\n"
	foodMetal += str(gameManager.curMetal) + " (" + ("+" if gameManager.metalPerTurn >= 0 else "") + str(gameManager.metalPerTurn) + ")" 
	
	foodMetalText.text = foodMetal
 
	# set the oxygen and energy text
	var oxygenEnergy = ""
	
	# set the text, e.g. "13 (+5)"
	oxygenEnergy += str(gameManager.curOxygen) + " (" + ("+" if gameManager.oxygenPerTurn >= 0 else "") + str(gameManager.oxygenPerTurn) + ")"
	oxygenEnergy += "\n"
	oxygenEnergy += str(gameManager.curEnergy) + " (" + ("+" if gameManager.energyPerTurn >= 0 else "") + str(gameManager.energyPerTurn) + ")"
 
	oxygenEnergyText.text = oxygenEnergy

# ===End Functions===

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_MineButton_pressed():
	buildingButtons.visible = false
	gameManager.on_select_building(1)
	pass # Replace with function body.


func _on_GreenhouseButton_pressed():
	buildingButtons.visible = false
	gameManager.on_select_building(2)
	pass # Replace with function body.


func _on_SolarButton_pressed():
	buildingButtons.visible = false
	gameManager.on_select_building(3)
	pass # Replace with function body.


func _on_EndTurnButton_pressed():
	gameManager.endTurn()
	pass # Replace with function body.
