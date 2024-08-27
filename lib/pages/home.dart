import 'package:flutter/material.dart';
import 'package:myfirstapp/utils/my_post.dart';
import 'package:myfirstapp/utils/my_story.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List stories = [
    'abdulloh',
    'javohir',
    'dilfuza',
    'odilbek',
    'ozodbek',
    'sarvar',
    'muhammadmirzo'
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Instagram'),
          Row(
            children: [
              Icon(Icons.add),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(Icons.tv),
              ),
              Icon(Icons.share)
            ],
          )
        ],
      )),
      body: Column(
        children: [
          // STORIES

          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                return MyStory(
                  name: stories[index]
                );
                },
            )
          ),



          //POSTLA

          Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return MyPost();
                },
              )
          )
        ],
      ),
    );
  }
}
