import 'package:flutter/material.dart';

class SpeakerWidget extends StatelessWidget {
  const SpeakerWidget({
    Key? key,
    required this.imageUrl,
    required this.speakerName,
    required this.speakerAuth,
    required this.isSpeaking,
  }) : super(key: key);

  final String imageUrl;
  final String speakerName;
  final String speakerAuth;
  final bool isSpeaking;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 110,
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: (isSpeaking) ? Colors.blue : Colors.transparent,
            child: CircleAvatar(
              radius: 32,
              backgroundColor:
                  (isSpeaking) ? Colors.grey[850] : Colors.transparent,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(imageUrl),
              ),
            ),
          ),
          Text(
            speakerName,
            style: Theme.of(context).textTheme.subtitle2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            speakerAuth,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
