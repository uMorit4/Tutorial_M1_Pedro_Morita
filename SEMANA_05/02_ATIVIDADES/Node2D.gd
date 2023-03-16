extends Node2D

# Variável valor e teste não estavam sendo utilizadas, então apaguei
var numero = 0
var lista = []
var nome = "André" # Variável para definir um nome de usuário
func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	#Corrigidas nomes de variáveis e de itens que estavam com nomes problemáticos como LineEdit
	numero = int($LineEdit.text)
	


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	#Corrigido nomes de variáveis incorretos
	for i in range(10):
		numero+=i
		lista.append(numero)
		#Uso do str para poder exibir o número como texto
	$Label.text = str(numero) 


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	#Variáveis cont e i foram declaradas antes do while ao invés de dentro dele
	var cont = 0
	var i = 0
	#Enquanto o "i" for menor que o alcance da lista,  se o número for impar, será adicionado mais um ao contador
	while(i < len(lista)):
		if(lista[i]%2==1):
			cont+=1
		elif(cont!=0): #Se o número for impar, i será igual ao tamanho da lista e "baldo" será acrescentado ao nome
			i = len(lista)
			nome = nome+"baldo"
		i += 1 #Uso do i += 1 para quebrar a lógica e o "baldo" aparecer apenas uma vez por input
		$Label2.text = str(nome) #Exibir o texto
		
