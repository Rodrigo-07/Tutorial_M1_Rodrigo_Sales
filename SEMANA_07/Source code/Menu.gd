extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	# Quando é passado o mouse por cima do botão, o botão e o background muda de cor
	if $TextureButton.is_hovered():
		$Label.set("custom_colors/font_color", Color(255,255,255))
		$ColorRect2.visible = true
		$ColorRect.visible = false
	else:
		$Label.set("custom_colors/font_color", Color(0,0,0))
		$ColorRect2.visible = false
		$ColorRect.visible = true



# Botão de start
func _on_TextureButton_pressed():
	get_tree().change_scene("res://Dialogo.tscn")
