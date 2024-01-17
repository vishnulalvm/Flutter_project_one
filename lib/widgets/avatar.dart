import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String images;
  final double widths;
  final double heights;
  final bool onlinestatus;

  const Avatar(
      {super.key,
      required this.images,
      required this.widths,
      required this.heights,
      required this.onlinestatus});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, top: 0, bottom: 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              fit: BoxFit.cover,
              images,
              width: widths,
              height: heights,
            ),
          ),
        ),
        onlinestatus == true
            ? Positioned(
                bottom: 3,
                right: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.greenAccent,
                  ),
                  width: 10,
                  height: 10,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
