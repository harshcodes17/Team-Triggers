import 'package:flutter/material.dart';
import 'package:student_facilitation/screens/welcome.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'HomePage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.blue.shade400),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, 'WelcomePage');
            },
            icon: Icon(Icons.person),
            label: Text('Sign Out'),
          ),
        ],
        backgroundColor: Colors.blue.shade200,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          color: Colors.blue.shade400,
          Icons.add,
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue.shade100,
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset('images/dashboard.jpeg'),
                decoration: BoxDecoration(color: Colors.blue.shade200),
              ),
              ListTile(
                title: Text('Profile'),
                onTap: () {
                  Navigator.pushNamed(context, 'Profile');
                },
              ),
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Trending'),
                onTap: () {
                  Navigator.pushNamed(context, 'Trending');
                },
              ),
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Lost&Found'),
                onTap: () {
                  Navigator.pushNamed(context, 'Lost');
                },
              ),
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Message'),
                onTap: () {
                  Navigator.pushNamed(context, 'Message');
                },
              ),
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/homepage.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 58.0),
                  child: Text(
                    'Hello User!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      fontFamily: 'Source Sans Pro',
                      color: Colors.blue.shade200,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 46.0),
                  child: Text(
                    'Recent Problems',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Font1',
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
