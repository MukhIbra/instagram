import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.all(10),
            height: 40,
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 5),
                Text('Search...')],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 20,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
