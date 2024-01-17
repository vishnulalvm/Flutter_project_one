import 'package:facebook_friends/widgets/avatar.dart';
import 'package:flutter/material.dart';

class FriendsStory extends StatelessWidget {
  final String stroy;
  final String name;
  final Avatar avatar;

  const FriendsStory(
      {super.key,
      required this.stroy,
      required this.name,
      required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 5, bottom: 10),
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(stroy),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 10,
            left: 0,
            child: avatar,
          ),
          Positioned(
              bottom: 8,
              left: 5,
              child: Text(
                name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
