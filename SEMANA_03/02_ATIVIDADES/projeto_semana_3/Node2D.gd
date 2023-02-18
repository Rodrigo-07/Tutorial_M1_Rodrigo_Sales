extends Node2D

# Lista vazia que vai receber os inputs do usuário
var lista_vazia = []

# Exercício 1: Botão que mostra na tela uma lista preenchida
func _on_Boto1_pressed():
	# Lista já com itens determinados que vai ser exibida na tela
	var lista_preenchida = ["JavaScript","Python","PHP","C#","C++"]
	
	# Exibe a lista preenchida sem [] e com uma vírgula entre os itens
	$Resposta1.text = str(", ".join(lista_preenchida))

# Exercício 2: Botão que adiciona itens a uma lista e exibe na tela a lista
func _on_Boto2_pressed():
	var input_lista_vazia = $Input1.text
	# Adicona o input do usuário na lista
	lista_vazia.append(input_lista_vazia)
	
	# Mostra a lista na tela
	$Resposta2.text = str(", ".join(lista_vazia))

# Exercício 3: Função que retorna um texto na tela
func _texto():
	var text = "Olá, tudo bem?"
	$Resposta3.text = str(text)

# Botão que executa a função _texto
func _on_Boto3_pressed():
	_texto()

# Exercício 4: Função que vai retornar o input do usuário
func _input_usuario():
	var tela = $Input2.text
	$Resposta4.text = str(tela)

# Botão que executa a função _input_usuario
func _on_Boto4_pressed():
	_input_usuario()
