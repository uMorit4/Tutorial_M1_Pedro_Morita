extends KinematicBody2D

#PT/BR: Inicia o timer no início da fase e esconde o sprite 
#EN/US: Initiates the timer on the star of the level and hide the sprite
func _ready():
	$Timer.start()
	$OncaContrario.hide()

#PT/BR: Variáveis locais de velocidade, input e preload de cena 
#EN/US: Local variables for speed, input and scene preload
var move_speed = 300
var bullet = preload("res://scenes/Bullet.tscn")
var vector_input = Vector2.ZERO

#PT/BR(1): Função que processa os inputs do teclado, movendo o sprite para esquerda ou direita e mudando o sprite 
#PT/BR(2): de acordo com o sentido
#EN/US(1): Function that process the keyboard inputs, moving the sprite to left or right, changing the sprite based in
#EN/US(2): the side he is facing
func _physics_process(delta):
	if Input.get_action_strength("ui_right"):
		var movement = move_and_collide(Vector2.RIGHT * delta * move_speed)
		$Onca.show()
		$OncaContrario.hide()
	elif Input.get_action_strength("ui_left"):
		var movement = move_and_collide(Vector2.LEFT * delta * move_speed)
		$Onca.hide()
		$OncaContrario.show()

#PT/BR: Input que quando precionado inicia o som do rugido e executa a função "fire"
#EN/US: Input that starts the roar sound and executes the function "fire" when pressed
	if Input.is_action_just_pressed("Fire"):
			$Roar.play()
			fire()

#PT/BR: Função que instancia "bullet" e faz com que ela se mova
#EN/US: Function that instances "bullet" and make it move
func fire():
	var firebullet = bullet.instance()
	firebullet.position = Vector2(position.x,position.y -$CollisionShape2D.shape.extents.y)
	get_parent().call_deferred("add_child", firebullet)
	



