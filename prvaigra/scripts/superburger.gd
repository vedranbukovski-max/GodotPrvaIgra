class_name Superburger
extends Hamburger

@export var dodatna_brzina: int = 100.0

func pokupi(igrac: Igrac) -> void:
	igrac.brzina += dodatna_brzina
	super.pokupi(igrac)
	print(name, ": brzina igraca je sada ", igrac.brzina)
