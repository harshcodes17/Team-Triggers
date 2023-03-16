import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Profile()));

class Profile extends StatefulWidget {
  static const String id = 'Profile';
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Students FAcilities',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, letterSpacing: 2.0),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'ved123',
                    labelText: 'username',
                    border: OutlineInputBorder()),
              ),
              Container(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'password', border: OutlineInputBorder()),
              ),
              Container(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'abc@gmail.com',
                    labelText: 'Email Id',
                    border: OutlineInputBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
