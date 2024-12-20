extends Node3D

var rotation_speed : float = 180.0
var move_speed : float = 6.0
var time = 0.0


func _process(delta):
	
	## Move the obstacle at a constant rate
	#position += Vector3(0, 0, move_speed)
	
	# Rotate the object at a constant rate
	rotation_degrees.x += rotation_speed * delta
	
	
	time += delta

func _ready():
	StartTweening()

func StartTweening():
	var move_range : float = 10.0
	var start_z := position.z
	var end_z := position.z + move_range
	var tween := create_tween().set_loops()
	tween.tween_property(self, "position:x", end_z, move_speed).from(start_z)
	tween.tween_property(self, "position:x", start_z, move_speed).from(end_z)
