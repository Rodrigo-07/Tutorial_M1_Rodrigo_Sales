extends KinematicBody2D

export var speed = 45
var move = Vector2()

func _ready():
	$AnimationPlayer.play("andando")
	set_position(Vector2(150, -75))
	set_z_index(1)

func _physics_process(delta):	
	if position.x == 150:
		move.x = +speed
		$Andando.set_flip_h(false)
	elif position.x >= 150 + 100:
		move.x = -speed
		$Andando.set_flip_h(true)
	
	move_and_slide(move)
	
	if $RayCast2D.is_colliding():
		queue_free()
	
	var collide = move_and_collide(move * delta)
	
	if collide:
		get_tree().change_scene("res://Node2D.tscn")


