import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:gritstone_test/domain/provider/message/message_provider.dart';
import 'package:speech_to_text/speech_to_text.dart';

class AccessibilityUtils {
  AccessibilityUtils._();

  static final AccessibilityUtils _instance = AccessibilityUtils._();
  factory AccessibilityUtils() => _instance;

  //? ==--==-- Flutter TTS --==--==
  final FlutterTts _flutterTts = FlutterTts();
  bool isTtsInitialized = false;

  //* ==--==--==-- Configure TTS --==--==--==
  Future<void> configureTts() async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setSpeechRate(0.4);
    await _flutterTts.setVolume(1.0);
    await _flutterTts.setPitch(1);
  }

  //* ==--==--==-- Start Speak --==--==--==
  Future<void> startSpeak(String text) async {
    if (!isTtsInitialized) await configureTts();

    /// which invokes the platform specific method for speakings
    await _flutterTts.speak(text);
  }

  //* ==--==--==-- Stop Speak --==--==--==
  Future<void> stopSpeak() async {
    await _flutterTts.stop();
  }

  //? ==--==-- Speech to Text --==--==
  final SpeechToText _speechToText = SpeechToText();
  bool isSttInitialized = false;

  //* ==--==--==-- Intilize STT --==--==--==
  Future<void> initializeStt() async {
    isSttInitialized = await _speechToText.initialize();
  }

  //* ==--==--==-- Start Listen --==--==--==
  Future<void> listen(WidgetRef ref) async {
    //! >><<>><< Is Listening ~ Event >><<>><<
    ref.read(MessageProvider.isListening.notifier).state = true;

    /// Initialize speech recognition services
    if (!isSttInitialized) await initializeStt();

    /// Starts a listening session for speech and converts it to text,
    /// invoking the provided [onResult] method as words are recognized.
    await _speechToText.listen(
      cancelOnError: true,
      onResult: (result) {
        //! >><<>><< Recognized Value ~ Event >><<>><<
        ref.read(MessageProvider.recognizedValue.notifier).state =
            result.recognizedWords;

        if (result.finalResult) {
          //! >><<>><< Message ~ Event >><<>><<
          ref.read(MessageProvider.messageController).text =
              result.recognizedWords;

          stopListening(ref);
        }
      },
    );
  }

  //* ==--==--==-- Stop Listening --==--==--==
  Future<void> stopListening(WidgetRef ref) async {
    //! >><<>><< Is Listening ~ Event >><<>><<
    ref.read(MessageProvider.isListening.notifier).state = false;

    /// Stops the current listen for speech if active, does nothing if not.
    await _speechToText.stop();
  }
}
