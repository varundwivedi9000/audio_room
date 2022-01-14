import 'package:audio_room/models/listener.dart';

class ListenerController {
  ListenerController._privateConstructor();

  static final ListenerController _instance =
      ListenerController._privateConstructor();

  factory ListenerController() {
    return _instance;
  }

  final List<Listener> listeners = sampleListeners
      .map((listener) => Listener(
            imageUrl: listener["imageUrl"],
            listenerName: listener["listenerName"],
          ))
      .toList();
}

ListenerController listenerController = ListenerController();
