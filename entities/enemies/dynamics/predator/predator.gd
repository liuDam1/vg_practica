extends CharacterBody2D

@onready var ray = $ray_predator

func _process(delta):
	if ray.is_colliding():
		var body = ray.get_collider()
		if body.is_in_group("jugadores"):
			$animation_predator.play("attack")

func _on_area_predator_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugadores"):
		body.perder_vida()
