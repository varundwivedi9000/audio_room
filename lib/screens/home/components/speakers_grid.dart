import 'package:audio_room/config/constants.dart';
import 'package:audio_room/controllers/speaker_controller.dart';
import 'package:audio_room/screens/home/components/speaker_widget.dart';
import 'package:flutter/material.dart';

class SpeakersGrid extends StatelessWidget {
  const SpeakersGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      childAspectRatio: 90 / 110,
      mainAxisSpacing: kDefaultPadding / 2,
      crossAxisSpacing: kDefaultPadding,
      physics: const NeverScrollableScrollPhysics(),
      children: speakerController.speakers
          .map((speaker) => SpeakerWidget(
                imageUrl: speaker.imageUrl,
                speakerName: speaker.speakerName,
                speakerAuth: speaker.speakerAuth,
                isSpeaking: speaker.isSpeaking,
              ))
          .toList(),
    );
  }
}
