extends Node2D

# Referencias a nodos
@onready var rich_text := $richTxt_histotia as RichTextLabel
@onready var btn_saltar := $btn_saltar as Button
@onready var historia := $historia as AudioStreamPlayer2D

# Configuración scroll
var scroll_speed := 10.0  # Velocidad (px/s)
var start_pos := Vector2() # Pos inicial (fuera pantalla abajo)
var end_pos := Vector2()   # Pos final (fuera pantalla arriba)
var is_scrolling := false  # Control animación

# Ruta escena destino
var escena_destino := "res://menu/levels/nivel.tscn"

func _ready() -> void:
	# Config RichTextLabel
	rich_text.scroll_active = true
	rich_text.custom_minimum_size.y = 2000  # Ajustar según largo texto
	
	# Calcular posiciones
	start_pos = Vector2(rich_text.position.x, get_viewport_rect().size.y)
	end_pos = Vector2(rich_text.position.x, -rich_text.custom_minimum_size.y)
	
	# Conectar botón
	btn_saltar.pressed.connect(_on_btn_saltar_pressed)
	
	# Conectar señal de fin de audio
	historia.finished.connect(_on_historia_finished)
	
	start_scroll() # Iniciar animación

func start_scroll() -> void:
	is_scrolling = true
	rich_text.position = start_pos

func _process(delta: float) -> void:
	if is_scrolling:
		rich_text.position.y -= scroll_speed * delta # Mover texto arriba
		# Opcional: Verificar si el texto llegó al final
		if rich_text.position.y <= end_pos.y:
			is_scrolling = false
			cambiar_a_escena_destino()

func _on_btn_saltar_pressed() -> void:
	is_scrolling = false
	cambiar_a_escena_destino() # Saltar → cambiar escena

func _on_historia_finished() -> void:
	# Cuando el audio termina, cambiar de escena
	is_scrolling = false
	cambiar_a_escena_destino()

func cambiar_a_escena_destino() -> void:
	# Validar ruta antes de cambiar
	if ResourceLoader.exists(escena_destino):
		get_tree().change_scene_to_file(escena_destino)
