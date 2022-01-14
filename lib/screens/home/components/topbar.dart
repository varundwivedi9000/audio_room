import 'package:audio_room/config/constants.dart';
import 'package:audio_room/controllers/listener_controller.dart';
import 'package:audio_room/controllers/speaker_controller.dart';
import 'package:audio_room/screens/home/components/icon_box.dart';
import 'package:audio_room/screens/home/components/live_text.dart';
import 'package:audio_room/screens/home/components/stats_indicator.dart';
import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  const Topbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.keyboard_arrow_down),
        const SizedBox(width: kDefaultPadding / 4),
        const LiveText(),
        const SizedBox(width: kDefaultPadding / 4),
        StatsIndicator(
          icon: Icons.mic,
          number: speakerController.speakers.length,
        ),
        const SizedBox(width: kDefaultPadding / 4),
        StatsIndicator(
          icon: Icons.headphones,
          number: listenerController.listeners.length,
        ),
        const Spacer(),
        const IconBox(icon: Icons.more_horiz),
        const SizedBox(width: kDefaultPadding / 4),
        const IconBox(icon: Icons.close),
      ],
    );
  }
}
