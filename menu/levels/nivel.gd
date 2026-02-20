extends Control

func _on_btn_nivel1_pressed():
	get_tree().change_scene_to_file("res://evironment/level1/evironment.tscn")

func _on_btn_volver_pressed():
	get_tree().change_scene_to_file("res://menu/main/menu.tscn")
