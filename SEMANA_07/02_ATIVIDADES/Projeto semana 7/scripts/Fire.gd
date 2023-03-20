extends KinematicBody2D

#PT/BR: Variáveis 
#EN/US: Local variables
var move_speed = 300
var life_time = 2
var life_spawn = 0
var score = []

#PT/BR: 
#EN/US:
func _physics_process(delta):
	var colision = move_and_collide(Vector2.UP * delta * move_speed)
	if colision and colision.collider.has_method("kill"):
		colision.collider.kill()
		queue_free()
		Global.score += 1
	
	life_spawn += delta
	if life_spawn > life_time:
		queue_free()
	
	#PT/BR: Dá queue_free na cena de fire, para impedir que o tiro seja spammavel
	#EN/US: Gets queue_free on the fire scene, to stop the fire to be spammable
	if Input.is_action_just_pressed("Fire"):
		queue_free()

