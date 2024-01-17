import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  final String name;

  const FooterButton(
      {super.key,
      required this.icon,
      required this.color,
      required this.onPressed,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
        ),
        label: Text(name),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          elevation: 0,
        ),
      ),
    );
  }
}

Widget footerButton() {
  return SizedBox(
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FooterButton(
          icon: Icons.thumb_up_alt_outlined,
          color: Colors.black,
          onPressed: () {},
          name: 'Like',
        ),
        VerticalDivider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        FooterButton(
          icon: Icons.chat,
          color: Colors.black,
          onPressed: () {},
          name: 'Comment',
        ),
        VerticalDivider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        FooterButton(
          icon: Icons.share,
          color: Colors.black,
          onPressed: () {},
          name: 'Share',
        ),
      ],
    ),
  );
}
