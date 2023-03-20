extends Label

#PT/BR: Função para mostrar o texto no label baseado no "Global.score" 
#EN/US: Function that changes text in the label based in "Global.score"
func _process(delta):
	self.text = "Score = " + str(Global.score)
	

	
