extends Node2D

#PT/BR: Quando apertado, o botão troca para a cena de "Conversation" 
#EN/US: When pressed, the buttons change scene to "Conversation"
func _on_Start_pressed():
	get_tree().change_scene("res://scenes/Converesation.tscn")

#PT/BR: Quando pressionado, fecha o jogo
#EN/US: When pressed, closes the game
func _on_Quit_pressed():
	get_tree().quit()
	
