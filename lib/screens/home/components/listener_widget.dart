import 'package:flutter/material.dart';

class ListenerWidget extends StatelessWidget {
  const ListenerWidget({
    Key? key,
    required this.imageUrl,
    required this.listenerName,
  }) : super(key: key);

  final String imageUrl;
  final String listenerName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 64,
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage(imageUrl),
          ),
          Text(
            listenerName,
            style: Theme.of(context).textTheme.bodyText2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
