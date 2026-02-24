extends Area2D

var dentro = false

func _ready() -> void:
	$ani_portal.play("default")

func _on_body_entered(body: Node2D):
	if body.is_in_group("jugadores"):
		dentro = true

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("jugadores"):
		dentro = false

func _process(delta: float) -> void:
		if dentro && Input.is_action_just_pressed("saltar"):
			get_tree().change_scene_to_file("res://menu/levels/nivel.tscn")
