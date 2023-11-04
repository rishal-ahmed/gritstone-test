import 'package:flutter_tts/flutter_tts.dart';

class TtsUtils {
  TtsUtils._();

  static final TtsUtils _instance = TtsUtils._();
  factory TtsUtils() => _instance;

  final FlutterTts _flutterTts = FlutterTts();
  bool initialized = false;

  //* ==--==--==-- Configure TTS --==--==--==
  Future<void> configureTts() async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setSpeechRate(0.5); //speed of speech
    await _flutterTts.setVolume(1.0); //volume of speech
    await _flutterTts.setPitch(1); //pitc of sound
  }

  //* ==--==--==-- Start Speak --==--==--==
  Future<void> startSpeak(String text) async {
    if (!initialized) await configureTts();
    await _flutterTts.speak(text);
  }

  //* ==--==--==-- Stop Speak --==--==--==
  Future<void> stopSpeak() async {
    await _flutterTts.stop();
  }
}
