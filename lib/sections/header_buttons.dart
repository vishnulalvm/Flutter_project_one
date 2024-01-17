import 'package:flutter/material.dart';

class HeaderButtons extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  final String name;
  const HeaderButtons(
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

Widget headerButton() {
  return SizedBox(
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        HeaderButtons(
          icon: Icons.videocam,
          color: Colors.red,
          onPressed: () {},
          name: 'Live',
        ),
        VerticalDivider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        HeaderButtons(
          icon: Icons.photo_library,
          color: Colors.green,
          onPressed: () {},
          name: 'Image',
        ),
        VerticalDivider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        HeaderButtons(
          icon: Icons.audio_file,
          color: Colors.yellow,
          onPressed: () {},
          name: 'Audio',
        ),
      ],
    ),
  );
}
