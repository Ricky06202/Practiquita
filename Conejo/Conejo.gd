extends KinematicBody2D

var gravedad = 250
var velocidad = Vector2()
export var velocidadLateral = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	velocidad.x = 0
	velocidad.y = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocidad.y += gravedad * delta
	if Input.is_action_pressed("derecha"):
		velocidad.x += velocidadLateral
		
	elif Input.is_action_pressed("izquierda"):
		velocidad.x -= velocidadLateral
