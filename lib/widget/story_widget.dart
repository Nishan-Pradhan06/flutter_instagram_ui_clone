import 'package:flutter/material.dart';

class StoryWidget extends StatefulWidget {
  const StoryWidget({super.key});

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.asset('assets/images/profile.jpg'),
            )
          ],
        )
      ],
    );
  }
}
