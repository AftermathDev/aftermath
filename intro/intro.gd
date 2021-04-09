# le epic main script
# think of this as a server script in roblox

extends Node2D

# get all important nodes
onready var camera = get_node("Camera2D")
onready var loopmusic = get_node("loopmusic")
onready var music = get_node("intromusic")
onready var background = get_node("background")
onready var introintro = get_node("introintromusic")

func _ready(): # fires when game starts
	camera.current = true # make the player see through camera2D
	main()

func main():
	introintro.play(0)
	background.play("stars")
	yield(get_tree().create_timer(1.0), "timeout") # https://godotengine.org/qa/7042/wait-like-function
	camera.get_node("AnimationPlayer").play("slide to the left")
	
	
