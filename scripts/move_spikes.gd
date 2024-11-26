extends Node3D
var isHidden = false

func _on_timer_timeout() -> void:
	if isHidden: 
		position.y +=.5
		isHidden = false
	else:
		position.y -= .5
		isHidden = true
