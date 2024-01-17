import 'package:facebook_friends/widgets/assets.dart';
import 'package:facebook_friends/widgets/avatar.dart';
import 'package:facebook_friends/widgets/frieds_story.dart';
import 'package:facebook_friends/widgets/your_story.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const YourStory(),
          FriendsStory(
            stroy: mammoty,
            name: 'Mammotty',
            avatar: Avatar(
                images: mammoty, widths: 40, heights: 40, onlinestatus: true),
          ),
          FriendsStory(
            stroy: mohanlal,
            name: 'Mohanlal',
            avatar: Avatar(
                images: mohanlal, widths: 40, heights: 40, onlinestatus: true),
          ),
          FriendsStory(
            stroy: raju,
            name: 'Privthi Raj',
            avatar: Avatar(
                images: raju, widths: 40, heights: 40, onlinestatus: true),
          ),
          FriendsStory(
            stroy: tovino,
            name: 'Tovino Tomas',
            avatar: Avatar(
                images: tovino, widths: 40, heights: 40, onlinestatus: true),
          ),
          
        ],
      ),
    );
  }
}
