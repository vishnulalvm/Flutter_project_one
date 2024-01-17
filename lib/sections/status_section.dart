import 'package:facebook_friends/widgets/assets.dart';
import 'package:facebook_friends/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(images: dq, widths: 40, heights: 40, onlinestatus: false,),
      title: const TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Share your Mind Thoughts',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
