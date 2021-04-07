extends Node2D

# get all important nodes
onready var camera = get_node("Camera2D")
onready var loopmusic = get_node("loopmusic")
onready var music = get_node("intromusic")
onready var background = get_node("background")

func _ready(): # fires when game starts
	camera.current = true # make the player see through camera2D
	main()

func main():
	background.play("stars")
	yield(get_tree().create_timer(1.0), "timeout") # https://godotengine.org/qa/7042/wait-like-function
	music.play(0)
