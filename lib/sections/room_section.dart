import 'package:facebook_friends/widgets/assets.dart';
import 'package:facebook_friends/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        children: [
          roomButton(),
          Avatar(images: mammoty, widths: 50, heights: 50, onlinestatus: true,),
          Avatar(images: mohanlal, widths: 50, heights: 50, onlinestatus: true,),
          Avatar(images: suresh, widths: 50, heights: 50, onlinestatus: true,),
          Avatar(images: dq, widths: 50, heights: 50, onlinestatus: true,),
          Avatar(images: tovino, widths: 50, heights: 50, onlinestatus: true,),
          Avatar(images: dileep, widths: 50, heights: 50, onlinestatus: true,),
          Avatar(images: raju, widths: 50, heights: 50,onlinestatus: true,),
        ],
      ),
    );
  }
}

Widget roomButton() {
  return OutlinedButton.icon(
    onPressed: () {},
    icon: const Icon(
      Icons.video_call,
      color: Colors.orange,
    ),
    label: const Text(
      'Room',
      style: TextStyle(color: Colors.blue),
    ),
  );
}
