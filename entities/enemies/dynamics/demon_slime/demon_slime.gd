extends CharacterBody2D

@onready var gravity: int = ProjectSettings.get("physics/2d/default_gravity")
@onready var ray = $ray_attack_demon
@export var speed = 50

var sentido = 1
var atacando = false
var persiguiendo = false

func _ready() -> void:
	$area_attack_demon/sprite_demon.visible = false
	$anisprite_demon.play("walk")

func _process(delta):
	if !atacando and ray.is_colliding():
		var body = ray.get_collider()
		if body.is_in_group("jugadores"):
			atacando = true
			$anisprite_demon.visible = false
			$area_attack_demon/sprite_demon.visible = true
			if sentido == 1:
				$area_attack_demon.scale.x = -1
			$animation_attack_demon.play("attack")

func _on_area_attack_demon_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugadores"):
		body.perder_vida()

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	
	if atacando:
		velocity.x = 0
		move_and_slide()
		return
	
	persiguiendo = false
	
	if $ray_attack_right_range_demon.is_colliding():
		$anisprite_demon.flip_h = false
		var body = $ray_attack_right_range_demon.get_collider()
		if body.is_in_group("jugadores"):
			persiguiendo = true
			sentido = 1
	
	elif $ray_attack_left_range_demon.is_colliding():
		$anisprite_demon.flip_h = false
		var body = $ray_attack_left_range_demon.get_collider()
		if body.is_in_group("jugadores"):
			persiguiendo = true
			sentido = -1
	
	if is_on_wall():
		sentido = -sentido
			
	if sentido == 1:
		$ray_attack_demon.target_position.x = 150
		$ray_attack_right_range_demon.target_position.x = 200
		$ray_attack_left_range_demon.target_position.x = -100
		$anisprite_demon.flip_h = true
		if !$ray_right_demon.is_colliding():
			sentido = -1
	else:
		$ray_attack_demon.target_position.x = -65
		$ray_attack_right_range_demon.target_position.x = 100
		$ray_attack_left_range_demon.target_position.x = -200
		$anisprite_demon.flip_h = false
		if !$ray_left_demon.is_colliding():
			sentido = 1
	
	if persiguiendo:
		velocity.x = speed * 3 * sentido
	else:
		velocity.x = speed * sentido
	
	move_and_slide()


func _on_animation_attack_demon_animation_finished(anim_name: StringName) -> void:
	if anim_name == "attack":
		atacando = false
		$area_attack_demon/sprite_demon.visible = false
		$anisprite_demon.visible = true
		$anisprite_demon.play("walk")
