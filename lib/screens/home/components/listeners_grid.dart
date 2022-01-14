import 'package:audio_room/config/constants.dart';
import 'package:audio_room/controllers/listener_controller.dart';
import 'package:audio_room/screens/home/components/listener_widget.dart';
import 'package:flutter/material.dart';

class ListenersGrid extends StatelessWidget {
  const ListenersGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      mainAxisSpacing: kDefaultPadding / 2,
      crossAxisSpacing: kDefaultPadding,
      physics: const NeverScrollableScrollPhysics(),
      children: listenerController.listeners
          .map((listener) => ListenerWidget(
                imageUrl: listener.imageUrl,
                listenerName: listener.listenerName,
              ))
          .toList(),
    );
  }
}
