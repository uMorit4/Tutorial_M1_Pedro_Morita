extends Area2D

#PT/BR: Variável local de vida 
#EN/US: Local variable for life
var life = 2

#PT/BR: Se "life" for igual a 0, troca a cena para "Defeat" 
#EN/US: IF "life" equals 0, changes the scene to "Defeat"
func _process(delta):
	if life == 0:
		get_tree().change_scene("res://scenes/Defeat.tscn")

#PT/BR: Se a área do "Young" for adentrada, "life" perderá 1 
#EN/US: If "Young" area is entered, "life" looses 1
func _on_Young_body_entered(body):
	life -= 1
