import 'package:audio_room/config/constants.dart';
import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  const IconBox({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 4,
        vertical: kDefaultPadding / 14,
      ),
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(2.5),
      ),
      child: Icon(icon, size: 15),
    );
  }
}
