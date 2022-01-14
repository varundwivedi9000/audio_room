import 'package:audio_room/config/constants.dart';
import 'package:flutter/material.dart';

class LiveText extends StatelessWidget {
  const LiveText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 4,
        vertical: kDefaultPadding / 14,
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(2.5),
      ),
      child: const Text(
        "LIVE",
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
