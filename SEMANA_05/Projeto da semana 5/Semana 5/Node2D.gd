extends Node2D

var teste = false
var valor = 0
# Não pode usar acento em nomes de váriaveis no GODOT já que o padrão é as letras usadas na lingua inglesa
var numero = 0 # Troquei número por numero
var nome
# É preciso declara a lista como uma variável
var lista = [] # lista = []  -> var lista = []
var i = 0

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) # Tirei acento e adicioni $ na frente de LineEdit para chamar a Node
	nome = str($LineEdit2.text) # Variável "nome" não estava declarada e estava escrito da maneira errada para atribuir um valor a essa variável


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i # O nome da variável "numero" está escrita de mandeira errada
		lista.append(numero) # O nome da variável "numero" está escrita de mandeira errada
	$Label.text = str(lista) # É preciso transformar o valor da variável numero em uma string


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont = 0
	var i = 0

	while(len(lista) != i): # Adicionei mais um argumento no while que fez o loop ter um fim
		if(lista[i]%2 == 1): # Verifica o se o número é impar
			cont+=1
		i += 1 # Faz com que a lista verifique cada item da lista
	
	# Mudei a identação do segundo if
	if(cont!=0): 
		# Mudei o código para não aparecer vários baldos na tela
		$Label2.text = str(nome) + " baldo"
