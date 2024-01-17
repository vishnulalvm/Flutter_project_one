import 'package:facebook_friends/sections/header_buttons.dart';
import 'package:facebook_friends/sections/room_section.dart';
import 'package:facebook_friends/sections/status_section.dart';
import 'package:facebook_friends/sections/story_section.dart';
import 'package:facebook_friends/widgets/appbar_button.dart';
import 'package:facebook_friends/widgets/assets.dart';
import 'package:facebook_friends/widgets/post_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thindivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            AppbarButton(
              icontype: const Icon(Icons.group),
              buttonAction: () {},
            ),
            AppbarButton(
              icontype: const Icon(Icons.search),
              buttonAction: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thindivider,
            headerButton(),
            thickDivider,
            const RoomSection(),
            thickDivider,
            const StorySection(),
            thickDivider,
            PostCard(
              avatar: dq,
              username: 'Mohanlal',
              postTime: '10h',
              posttitle: 'Happy BirthDay',
              postimage: tovino,
              bluetick: true,
              totalLike: '10k',
              totalComands: '1k',
              totolShares: '202',
            ),
            thickDivider,
            PostCard(
              avatar: raju,
              username: 'Privthi Raj',
              postTime: '1min',
              posttitle: rajutitle,
              postimage: gotlife,
              bluetick: true,
              totalLike: '25k',
              totalComands: '10k',
              totolShares: '2.5k',
            ),
            thickDivider,

          ],
        ),
      ),
    );
  }
}
