import 'package:audioplayers/audioplayers.dart';

class AudioPlayerSingleton {
  AudioPlayerSingleton._privateConstructor();

  static final AudioPlayerSingleton instance =
  AudioPlayerSingleton._privateConstructor();

  AudioPlayer? _player;

  Future<void> play(String url) async {
    _player?.dispose();
    final player = _player = AudioPlayer();
    await player.play(url as Source);
  }

  Future<void> pause() async {
    await _player?.pause();
  }

  Future<void> resume() async {
    await _player?.resume();
  }

  Future<void> stop() async {
    await _player?.stop();
  }
}