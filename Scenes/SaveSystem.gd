extends Node2D

var DisplayValue = 0

const SAVE_SECTION := "Display"
const SAVE_KEY := "Value"
const SAVE_PATH := "user://save.config"

func _ready():
	pass

func saveValue():
	var data := ConfigFile.new()
	data.set_value(SAVE_SECTION, SAVE_KEY, DisplayValue)
	var err = data.save(SAVE_PATH)
	if err != OK:
		print("Error: Could not save data")
	
func loadValue():
	var data := ConfigFile.new()
	var err = data.load(SAVE_PATH)
	if err != OK:
		print("Error: Could not load data")
	else:
		if data.has_section_key(SAVE_SECTION, SAVE_KEY):
			DisplayValue = data.get_value(SAVE_SECTION, SAVE_KEY)
		else:
			print("Error: File does not contain valid data")
