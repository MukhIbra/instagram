import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade700, shape: BoxShape.circle),
                ),

                SizedBox(width: 8),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('mukh_ibra',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      'Renesseans oromgohi',
                      style: TextStyle(
                          color: Colors.grey, fontStyle: FontStyle.italic),
                    )
                  ],
                )
              ],
            ),
            Icon(Icons.more_vert)
          ]),

          SizedBox(height: 10),

          Container(
            height: 300,
            color: Colors.grey.shade400,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(Icons.favorite_border, size: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(Icons.chat, size: 30),
                ),
                Icon(Icons.near_me_sharp, size: 30),
              ]),
              Icon(Icons.bookmark_border, size: 30),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text('Like by '),
              Text(
                'javohir',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text('others', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          RichText(
              text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                TextSpan(
                    text: 'mukh_ibra ',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        'Bugun DG oromgohidegi bolla bilan Instagramni yaratdik...')
              ]))
        ],
      ),
    );
  }
}
// ctrl + alt + L
