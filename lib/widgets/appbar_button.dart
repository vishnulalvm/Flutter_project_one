import 'package:flutter/material.dart';

class AppbarButton extends StatelessWidget {
  final Widget icontype;
  final void Function() buttonAction;

  const AppbarButton(
      {super.key, required this.icontype, required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 10,top: 7,bottom: 7),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: icontype,
        color: Colors.black,
        iconSize: 20,
      ),
    );
  }
}
