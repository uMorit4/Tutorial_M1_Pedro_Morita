extends Node2D
#PT/BR: Coloca um texto no RichTextLabel ao iniciar a cena
#EN/US: Inserts a text into RichTextLabel when starts the scene
func _ready():
	$Sprite/RichTextLabel.text = "Meu nome é Kiki, sou a última onça pintada que restou. Para proteger minha espécie da extinção, devo protejer meus filhotes!"

#PT/BR: Botão que muda para a cena "Tutorial" quando apertado
#EN/US: Button that changes scenes to "Tutorial" when pressed
func _on_Next_pressed():
	get_tree().change_scene("res://scenes/Tutorial.tscn")

