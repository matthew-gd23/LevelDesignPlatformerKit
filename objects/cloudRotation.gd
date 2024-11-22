extends Node3D

var time = 0.0

var random_number = RandomNumberGenerator.new()

var random_velocity:float
var random_time:float
var rotation_speed : float = 60.0

func _ready():
	
	random_velocity = random_number.randf_range(0.1, 2.0)
	random_time = random_number.randf_range(0.1, 2.0)

func _process(delta):
	
	# position.y += (cos(time * random_time) * random_velocity) * delta # Sine movement
	rotation_degrees.x += rotation_speed * delta
	
	time += delta
