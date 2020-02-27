extends Node2D

func _ready():
	pass 

# Buttons
func SubtractPressed():
	SaveSystem.DisplayValue -= 1

func AddPressed():
	SaveSystem.DisplayValue += 1

func SavePressed():
	SaveSystem.saveValue()

func LoadPressed():
	SaveSystem.loadValue()
