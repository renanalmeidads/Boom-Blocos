extends Node2D

var bump_to_str = {
	Globals.BUMP.TOO_FAR: ["LONGE DEMAIS", "TAH EH LONGE MACHO", "DEIXE CHEGAR MAIS PERTO", "PASSOU NEM PERTO", "TENHA CALMA CINDERELO"],
	Globals.BUMP.EARLY: ["ADIANTADO", "CALMA DEDO NERVOSO", "TAH COM PRESSA?", "MUITO CEDO", "RAPIDIM NEH MEU FI?"],
	Globals.BUMP.LATE: ["ATRASADO", "EITA QUE TAH COM SONO", "BORA MEU FI SE ADIANTE", "LENTO DEMAIS", "SE ARRASTANDO"],
	Globals.BUMP.PERFECT: ["PERFEITO", "AIH SIM", "BOA MEU CONSAGRADO", "CERTIM OH", "NA MOSCA"]
}

var type = Globals.BUMP.EARLY

func _ready() -> void:
	$Label.text = bump_to_str[type][randf_range(0, 5)]
	appear()
	
func appear() -> void:
	visible = true
	$Timer.start()
	
func disappear() -> void:
	visible = false

func _process(delta) -> void:
	pass

func _on_timer_timeout():
	disappear()
