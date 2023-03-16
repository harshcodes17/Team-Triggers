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
                      const EdgeInsets.only(left: 30.0, top: 180, right: 12.0),
                  child: Text(
                    'Welcome Student!',
                    style: TextStyle(
                      fontSize: 38,
                      color: Colors.blue.shade300,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // SingleChildScrollView(
            //   child: Container(
            //     padding: EdgeInsets.only(
            //       left: 25,
            //       top: MediaQuery.of(context).size.height * 0.5,
            //       right: 25,
            //     ),
            //     child: Column(
            //       children: [
            //         TextField(
            //           decoration: InputDecoration(
            //             fillColor: Colors.blue.shade100,
            //             filled: true,
            //             hintText: 'Email',
            //             border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 20,
            //         ),
            //         TextField(
            //           decoration: InputDecoration(
            //             fillColor: Colors.blue.shade100,
            //             filled: true,
            //             hintText: 'Password',
            //             border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // )
            Padding(
              padding: const EdgeInsets.only(left: 98.0, top: 400),
              child: Row(
                children: [
                  SizedBox(
                    width: 90,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade300,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
