import 'package:audio_room/config/constants.dart';
import 'package:flutter/material.dart';

class StatsIndicator extends StatelessWidget {
  const StatsIndicator({
    Key? key,
    required this.icon,
    required this.number,
  }) : super(key: key);

  final IconData icon;
  final int number;

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
      child: Row(
        children: [
          Icon(icon, size: 12),
          const SizedBox(width: kDefaultPadding / 12),
          Text("$number", style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
