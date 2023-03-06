extends Control

var list
var data :Array = []
var say
func _ready():
	pass # Replace with function body.



func _on_Empty_List_pressed():
	list = [1,2,3,4,5]
	$Panel/Screen.text = String(list)
	pass # Replace with function body.
	
	


func _on_Return_Tetx_pressed():
	data.append($Write_Text.text)
	$Panel/Screen.text = String(data)
	pass # Replace with function body.
	



func _on_Full_List_pressed():
	say = $Label.text
	$Panel/Screen.text = String(say)
	pass # Replace with function body.
	



func _on_Value_Insert_pressed():
	say = float($Write_Values.text)
	$Panel/Screen.text = String(say)
	pass # Replace with function body.
