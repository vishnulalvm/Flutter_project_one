import 'package:facebook_friends/widgets/assets.dart';
import 'package:flutter/material.dart';

class YourStory extends StatelessWidget {
  const YourStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(dq),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 50,
              ),),
              const Positioned(
                bottom: 8,
                left: 5,
                child: Text('Your Story',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}
