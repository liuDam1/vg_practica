extends CharacterBody2D

@export var gravity_scale = 2
@export var speed = 400
@export var acceleration = 500
@export var friction = 2000
@export var jump_force = -550
@export var air_acceleration = 800
@export var air_friction = 700
@export var limite_caida: float = 1000 

@onready var ani_player = $ani_player
@onready var contador: Control = $CanvasLayer/Contador

var monedas: int = 0
var muerte = false
@export var vida: int = 3

func _ready() -> void:
	add_to_group("jugadores")
	contador.actualizar(0)

func _physics_process(delta: float) -> void:
	var input_axis = Input.get_axis("mover_izquierda", "mover_derecha")
	apply_gravity(delta)
	handle_acceleration(input_axis, delta)
	apply_friction(input_axis, delta)
	handle_jump()
	handle_air_acceleration(input_axis, delta)
	update_animation(input_axis)
	move_and_slide()
	if global_position.y > limite_caida:
		perder_vida()

func apply_gravity(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta * gravity_scale

func handle_acceleration(input_axis, delta):
	if not is_on_floor(): return
	if input_axis != 0:
		velocity.x = move_toward(velocity.x, speed * input_axis, acceleration * delta)

func apply_friction(input_axis, delta):
	if input_axis == 0:
		if is_on_floor():
			velocity.x = 0
		else:
			velocity.x = move_toward(velocity.x, 0, air_friction * delta)

func handle_jump():
	if is_on_floor():
		if Input.is_action_pressed("saltar"):
			velocity.y = jump_force

func handle_air_acceleration(input_axis, delta):
	if is_on_floor(): return
	if input_axis != 0:
		velocity.x = move_toward(velocity.x, speed * input_axis, air_acceleration * delta)

func update_animation(input_axis):
	if input_axis != 0 and is_on_floor():
		ani_player.speed_scale = velocity.length() / 100
		ani_player.flip_h = (input_axis < 0)
		ani_player.play("run")
	elif not is_on_floor():
		ani_player.speed_scale = 0
		ani_player.play("jump")
	else:
		ani_player.speed_scale = 1
		ani_player.play("idle")

func add_moneda():
	monedas += 1
	contador.actualizar(monedas)

func perder_vida():
	vida -= 1
	contador.actualizarVida(vida)
	
	if vida == 0 && !muerte:
		set_physics_process(false)
		set_process_input(false)
		$tiempo/audio_morrir.play()
		$tiempo.start(2.2)
		$ani_player.play("muerte")
		muerte = true
		await $tiempo.timeout
		get_tree().change_scene_to_file("res://menu/gameover/game_over.tscn")
