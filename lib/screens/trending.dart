import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  static const String id = 'Trending';
  const Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trending Section",
          style: TextStyle(color: Colors.blue.shade200),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, 'HomePage');
            },
            icon: Icon(Icons.person),
            label: Text(
              'Home',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue.shade600),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 30),
                  child: Text(
                    'Trending Problems',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Font1',
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
