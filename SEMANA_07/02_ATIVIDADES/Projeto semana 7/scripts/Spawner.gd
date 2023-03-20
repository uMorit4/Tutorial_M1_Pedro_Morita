extends Node2D

#PT/BR: Variáveis locais para reiniciar a posição de spawn e carregar a cena "Enemy"
#EN/US: Local variables to reset the spawn positions and preload the scene "Enemy
var spawn_positions = null
var Enemy = preload("res://scenes/Enemy.tscn")

#PT/BR: Define as posições de spawn baseado nos nós filhos do "SpawnerPosition" 
#EN/US: Defines the spawn positions based on the sons nodes from "SpawnerPosition"
func _ready():
	spawn_positions = $SpawnerPosition.get_children()

#PT/BR: Função que spawna aleatoriamente os inimigos
#EN/US: Function that randonly spawns enemies
func spawn_enemy():
	var index = randi() % spawn_positions.size()
	var enemy = Enemy.instance()
	enemy.global_position = spawn_positions[index].global_position
	add_child(enemy)

#PT/BR: Quando o timer se esgotar, executa a função "spawn_enemy" 
#EN/US: When the timer is over, executes the function "spawn_enemy"
func _on_SpawnTimer_timeout():
	spawn_enemy()
	pass # Replace with function body.
