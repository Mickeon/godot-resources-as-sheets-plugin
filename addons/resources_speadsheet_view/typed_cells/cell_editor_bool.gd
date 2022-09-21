extends CellEditor


func can_edit_value(value, type, property_hint) -> bool:
	return type == TYPE_BOOL


func set_value(node : Control, value):
	if value is bool:
		_set_value_internal(node, value)

	else:
		_set_value_internal(node, !node.text.begins_with("O"))


func get_value(node : Control):
	return node.text == "ON"


func _set_value_internal(node, value):
	node.text = "ON" if value else "off"
	node.self_modulate.a = 1.0 if value else 0.2
