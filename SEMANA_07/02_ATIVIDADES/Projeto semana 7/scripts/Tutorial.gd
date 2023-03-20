extends Node2D

#PT/BR: Quando pressionado, o botão muda a cena para "World"
#EN/US: When pressed, the button changes the scene to "World"
func _on_Button_pressed():
	get_tree().change_scene("res://scenes/World.tscn")
