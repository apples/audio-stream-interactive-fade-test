extends Control

@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer
@onready var track_label: Label = %TrackLabel


func _process(_delta: float) -> void:
	if audio_stream_player.has_stream_playback():
		track_label.text = audio_stream_player.stream.get_clip_name(audio_stream_player.get_stream_playback().get_current_clip_index())


func _on_button_pressed() -> void:
	audio_stream_player["parameters/switch_to_clip"] = "Drum"
