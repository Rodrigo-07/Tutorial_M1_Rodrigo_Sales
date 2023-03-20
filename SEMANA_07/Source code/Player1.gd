extends KinematicBody2D

# Variáveis relacionadas ao moviemtno
var speed = 5000
var jump_speed = 125
var gravity = 200
var friction = 0.25

# Variável global que determina se o player está no mundo normal ou invertido
onready var global_vars = get_node("/root/Global")

var velocity = Vector2.ZERO

func _process(delta):
	# Depedendo de qual mundo ele está o a camera troca de posição
	if global_vars.invertido == false:
		$Camera2D.current = true
	else:
		$Camera2D.current = false
	
func _physics_process(delta):
	# Só é possivel se movimentar se o jogador estiver no mundo correto
	if global_vars.invertido == false:
		velocity.x = 0
		if Input.is_action_pressed("ui_right"):
			velocity.x += speed * delta
			$AnimationPlayer.play("andando_direita")
			$Sprite.set_flip_h(false)
		elif Input.is_action_pressed("ui_left"):
			velocity.x -= speed * delta
			$AnimationPlayer.play("andando_direita")
			$Sprite.set_flip_h(true)
		else:
			$AnimationPlayer.stop()
		
		velocity.y += gravity * delta
		
		# Código que deixa o pulo do personagem mais natural
		if is_on_floor():
			if velocity.x == 0:
				velocity.x = lerp(velocity.x, 0, friction)
			
			if Input.is_action_just_pressed("ui_up"):
				velocity.y = -jump_speed
			
			if Input.is_action_just_released("ui_up") and velocity.y < -jump_speed/2:
				velocity.y = 0
				velocity.y = -jump_speed/2
				
		velocity = move_and_slide(velocity, Vector2.UP)

# Quando o jogador entra no portal troca o valor da variável que define qual mundo ele está
func _on_Area2D_body_entered(body):
	global_vars.invertido = true
	print(global_vars.invertido)


	
