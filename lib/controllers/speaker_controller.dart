import 'package:audio_room/models/speaker.dart';

class SpeakerController {
  SpeakerController._privateConstructor();

  static final SpeakerController _instance =
      SpeakerController._privateConstructor();

  factory SpeakerController() {
    return _instance;
  }

  final List<Speaker> speakers = sampleSpeakers
      .map((speaker) => Speaker(
            imageUrl: speaker["imageUrl"],
            speakerName: speaker["speakerName"],
            speakerAuth: speaker["speakerAuth"],
            isSpeaking: speaker["isSpeaking"],
          ))
      .toList();
}

SpeakerController speakerController = SpeakerController();
