extends Node2D

# Texto da fala
var messages = [
	"........................................", 
	"...............",
	"....",
	"O espaço-tempo está em colapso!!!!!",
	"Devido a um viajante do tempo que tentou roubar o cristal do tempo, todas as linhas do tempo quebraram e estão se misturando!",
	"Se continuar assim por mais tempo as linhas do tempo vão colapsar e se excluirem.",
	"Eu estou tentando manter as linhas do tempo estáveis por isso não consigo recuperar o cristal do tempo!",
	"Você e todas suas versões de todos universos foram escolhidas para recuperar o cristal e estabeler a harmonia novamente!",
	"O cristal foi fragmentado em 4 partes na sua linha do tempo atual e na linha paralela a sua, onde tudo é invertido.",
	"Eu criei portais para que você possa se locomover entre as linhas.",
	"Não há mais tempo para conversa, tome cuidado com os inimigos e trabalhe em conjunto com sua outra versão!"
]

# Variáveis que definem a velocidade e tempo para ler o texto
var typing_speed = 0.075
var read_time = 2

var current_message = 0
var display = ""
var current_char = 0

func _ready():
	#Começa o diálogo e a animação
	$AnimatedSprite.play("default")
	start_dialogue()
	
func start_dialogue():
	# Define o caracther 0 da frase
	current_message = 0
	display = ""
	current_char = 0
	
	$next_char.set_wait_time(typing_speed)
	$next_char.start()

# Fim do diálogo
func stop_dialogue():
	yield(get_tree().create_timer(3), "timeout")
	get_tree().change_scene("res://Node2D.tscn")

func _on_next_char_timeout():
	# Se o texto não tiver acabado vai mostrando um caracther de cada vez
	if (current_char < len(messages[current_message])):
		var next_char = messages[current_message][current_char]
		display += next_char
		
		$text.text = display
		current_char += 1
	# Quando acabar o texto inicia a proxima frase (item da array)
	else:
		$next_char.stop()
		$next_message.one_shot = true
		$next_message.set_wait_time(read_time)
		$next_message.start()

func _on_next_message_timeout():
	# Verifica se todo diálogo foi finalizado ou vai para a proxima frase
	if (current_message == len(messages) - 1):
		stop_dialogue()
	else: 
		current_message += 1
		display = ""
		current_char = 0
		$next_char.start()
