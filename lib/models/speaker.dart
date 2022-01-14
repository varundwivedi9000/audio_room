import 'package:audio_room/config/constants.dart';

class Speaker {
  final String imageUrl;
  final String speakerName;
  final String speakerAuth;
  final bool isSpeaking;

  Speaker({
    required this.imageUrl,
    required this.speakerName,
    required this.speakerAuth,
    required this.isSpeaking,
  });
}

const List sampleSpeakers = [
  {
    "imageUrl": defaultUserImageUrl,
    "speakerName": "Speaker",
    "speakerAuth": "Host",
    "isSpeaking": true,
  },
  {
    "imageUrl": defaultUserImageUrl,
    "speakerName": "Other Speaker",
    "speakerAuth": "Co-Host",
    "isSpeaking": false,
  },
  {
    "imageUrl": defaultUserImageUrl,
    "speakerName": "Other Speaker",
    "speakerAuth": "Guest",
    "isSpeaking": false,
  },
  {
    "imageUrl": defaultUserImageUrl,
    "speakerName": "Other Speaker",
    "speakerAuth": "Guest",
    "isSpeaking": false,
  },
  {
    "imageUrl": defaultUserImageUrl,
    "speakerName": "Other Speaker",
    "speakerAuth": "Guest",
    "isSpeaking": false,
  },
  {
    "imageUrl": defaultUserImageUrl,
    "speakerName": "Other Speaker",
    "speakerAuth": "Guest",
    "isSpeaking": false,
  },
];
