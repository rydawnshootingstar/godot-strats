extends Node

# Building Types:
# Base = 0
# Mine = 1
# Greenhouse = 2
# Solar Panel = 3

# Resources:
# None = 0
# Food = 1
# Metal = 2
# Oxygen = 3
# Energy = 4

class Building:
 
	# building type
	var type : int
 
	# building texture
	var iconTexture : Texture
 
	# resource the building produces
	var prodResource : int = 0
	var prodResourceAmount : int
 
	# resource the building needs to be maintained
	var upkeepResource : int = 0
	var upkeepResourceAmount : int
 
	func _init (type, iconTexture, prodResource, prodResourceAmount, upkeepResource, upkeepResourceAmount):
		self.type = type
		self.iconTexture = iconTexture
		self.prodResource = prodResource
		self.prodResourceAmount = prodResourceAmount
		self.upkeepResource = upkeepResource
		self.upkeepResourceAmount = upkeepResourceAmount


var base = Building.new(0, preload("res://Sprites/Base.png"), 0, 0, 0, 0)
var mine = Building.new(1, preload("res://Sprites/Mine.png"), 2, 1, 4, 1)
var greenhouse = Building.new(2, preload("res://Sprites/Greenhouse.png"), 1, 1, 0, 0)
var solarpanel = Building.new(3, preload("res://Sprites/SolarPanel.png"), 4, 1, 0, 0)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
