import 'package:facebook_friends/sections/footer_buttons.dart';
import 'package:facebook_friends/widgets/avatar.dart';
import 'package:facebook_friends/widgets/blue_tick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String username;
  final String postTime;
  final String posttitle;
  final String postimage;
  final bool bluetick;
  final String totalLike;
  final String totalComands;
  final String totolShares;

  const PostCard(
      {super.key,
      required this.avatar,
      required this.username,
      required this.postTime,
      required this.posttitle,
      required this.postimage,
      required this.bluetick,
      required this.totalLike,
      required this.totalComands,
      required this.totolShares});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          postCard(),
          titlePortion(),
          postImage(),
          postCardFooter(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          footerButton(),
        ],
      ),
    );
  }

// post card top portion profile and user name
  Widget postCard() {
    return ListTile(
      leading:
          Avatar(images: avatar, widths: 40, heights: 40, onlinestatus: false),
      title: Row(
        children: [
          Text(
            username,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 10,
          ),
          bluetick ? const BlueTick() : const SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(postTime),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[700],
          )
        ],
      ),
      trailing: const Icon(Icons.more_vert),
    );
  }

// post description section
  Widget titlePortion() {
    return Container(
      padding: const EdgeInsets.only(bottom: 5,left: 10,right: 10),
      child: Text(
        posttitle,
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

// post image section

  Widget postImage() {
    return Container(
        padding: const EdgeInsets.only(top: 5), child: Image.asset(postimage));
  }

//post card footer section

  Widget postCardFooter() {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                      color: Colors.blue, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.thumb_up,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                displyText(value: totalLike),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: [
                displyText(value: totalComands),
                const SizedBox(width: 5),
                displyText(value: 'Commants'),
                const SizedBox(width: 10),
                displyText(value: totolShares),
                const SizedBox(width: 5),
                displyText(value: 'Shares'),
                const SizedBox(width: 5),
                Avatar(
                    images: avatar,
                    widths: 25,
                    heights: 25,
                    onlinestatus: false),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displyText({required String value}) {
    return Text(
      value,
      style: const TextStyle(color: Colors.black),
    );
  }
}
