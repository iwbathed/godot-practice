extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_Host_button_pressed():
	var server = NetworkedMultiplayerENet.new()
	server.create_server(8000, 2)
	get_tree().set_network_peer(server)
	
	

func _on_Join_button_pressed():
	var client = NetworkedMultiplayerENet.new()
	client.create_client("127.0.0.1", 8000)
	get_tree().set_network_peer(client)
	
	
	
