extends Node2D

#PT/BR: Função que para a musica e inicia o som de "Defeat"
#EN/US: Function that stops the music and plays the "Defeat" sound
func _ready():
	Audio.stop()
	$DefeatSound.play()
	
#PT/BR: Quando pressionado, o botão reinicia o score e coloca a musica para tocar novamente, mudando de cena para World
#EN/US: When pressed, the button resets the score and plays the music again, changing the scene to World
func _on_Button_pressed():
	Global.score = 0
	Audio.play()
	get_tree().change_scene("res://scenes/World.tscn")
	
#PT/BR: Fecha o jogo quando pressionado
#EN/US: Exits the game when pressed
func _on_Button2_pressed():
	get_tree().quit()
	
