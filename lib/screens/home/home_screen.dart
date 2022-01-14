import 'package:audio_room/config/constants.dart';
import 'package:audio_room/screens/home/components/listener_widget.dart';
import 'package:audio_room/screens/home/components/listeners_grid.dart';
import 'package:audio_room/screens/home/components/speakers_grid.dart';
import 'package:audio_room/screens/home/components/topbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Topbar(),
                Text(
                  "Speaker's live audio room",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: kDefaultPadding / 2),
                const SpeakersGrid(),
                const SizedBox(height: kDefaultPadding / 2),
                Text(
                  "Listeners",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(height: kDefaultPadding / 2),
                const ListenersGrid(),
                const SizedBox(height: kDefaultPadding / 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
