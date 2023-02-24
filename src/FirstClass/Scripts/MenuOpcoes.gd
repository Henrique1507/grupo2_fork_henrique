extends Node2D


# Retorna para a tela do menu inicial
func _on_VoltarButton_pressed():
	get_tree().change_scene("res://Scenes/MenuInicial.tscn")


# Altera volume da música de acordo com a mudança no valor do VolumeSlider
func _on_VolumeSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)