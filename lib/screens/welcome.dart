import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'images/—Pngtree—hand drawn flat cartoon background_1068944.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                width: 700,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 40.0, top: 120, right: 12.0),
                  child: Text(
                    'Welcome Student!',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.blue.shade300,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
