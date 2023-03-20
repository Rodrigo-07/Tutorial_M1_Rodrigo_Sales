extends Node2D

# Load das cenas com os inimigos
var inimigos_normal = preload("res://Inimigo_normal.tscn")
var inimigo_normal
var inimigos_paralelos = preload("res://Inimigo_paralelo.tscn")
var inimigo_paralelo

func inimigos_normais():
	inimigo_normal = inimigos_normal.instance()
	add_child(inimigo_normal)

func inimigos_paralelos():
	inimigo_paralelo = inimigos_paralelos.instance()
	add_child(inimigo_paralelo)

var n_cristais = 0

# Instacia os inimgios e começa as animações
func _ready():
	inimigos_normais()
	inimigos_paralelos()
	$Area2D/AnimatedSprite2.play("default")
	$Area2D2/AnimatedSprite.play("default")

# Quando coletar os 4 cristais acaba o jogo
func _process(delta):
	if n_cristais == 4:
		get_tree().change_scene("res://Dialogo2.tscn")

# Funções que detectam quando um cristal foi coletado
func _on_Cristal_area_1_body_entered(body):
	n_cristais += 1
	$Cristal_area_1/CollisionShape1.position = Vector2(999,999)
	$Cristal_area_1/Cristal1.position = Vector2(999,999)
	print(n_cristais)


func _on_Cristal_area_2_body_entered(body):
	n_cristais += 1
	$Cristal_area_2/CollisionShape2D2.position = Vector2(999,999)
	$Cristal_area_2/Cristal2.position = Vector2(999,999)
	print(n_cristais)


func _on_Cristal_area_3_body_entered(body):
	n_cristais += 1
	$Cristal_area_3/CollisionShape2D3.position = Vector2(999,999)
	$Cristal_area_3/Cristal3.position = Vector2(999,999)
	print(n_cristais)


func _on_Cristal_area_4_body_entered(body):
	n_cristais += 1
	$Cristal_area_4/CollisionShape2D4.position = Vector2(0,0)
	$Cristal_area_4/Cristal4.position = Vector2(0,0)
	print(n_cristais)
