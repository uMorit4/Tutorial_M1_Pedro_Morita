extends KinematicBody2D

#PT/BR: Variável que define a "move_speed" para 350
#EN/US: Variable that defines "move_speed" to 350
var move_speed = 350

#PT/BR: Função que define a movimentação do "Enemy" para baixo e que ele deve colidir
#EN/US: Function that defines the "Enemy" movimentation down and that he has to colide
func _physics_process(delta):
	var _colision = move_and_collide(Vector2.DOWN * delta * move_speed)
	
#PT/BR: Dá queue_free no objeto, o removendo do jogo
#EN/US: Gets queue_free in the object, removing it from the game
func kill():
	queue_free()
