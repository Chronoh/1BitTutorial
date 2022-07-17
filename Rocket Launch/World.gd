extends Node

onready var animationPlayer = $AnimationPlayer #This is the shorthand for get_node("<node>"). 
	# a : after a var name would type the var as the first thing it picks. Or you could put ": AnimationPlayer" after the name to strictly type it as that only. 

func _on_LaunchButton_pressed():
	animationPlayer.play("Launch")
	
