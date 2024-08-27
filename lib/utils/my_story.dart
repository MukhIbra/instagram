import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  String name;

  MyStory({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration:
            BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          ),
          SizedBox(height: 5),
          Text(name, style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
