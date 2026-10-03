extends Node2D

var hamburger: int = 0
var kraj: bool = false

func _ready() -> void:
	hamburger = get_tree().get_nodes_in_group("hamburger").size()
	print("Main: _ready, hamburgera u sceni: ", hamburger)

func _process(delta: float) -> void:
	if kraj:
		return
	if get_tree().get_nodes_in_group("hamburger").is_empty():
		kraj = true
		print("Kraj igre. Svi hamburgeri su pojedeni")
