import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'images/—Pngtree—hand drawn flat cartoon background_1068944.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 50, top: 50),
          //color: Color(0xFF3b5999).withOpacity(.85),

          // color: Colors.transparent,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900,
                    ),
                  ),
                  TextField(
                    cursorColor: Colors.blue.shade800,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: 'Enter your Email',
                        labelStyle: TextStyle(
                          color: Colors.blueAccent,
                        )),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    cursorColor: Colors.blue.shade900,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: 'Enter your password',
                        labelStyle: TextStyle(
                          color: Colors.blueAccent,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'home');
                    },
                    icon: Icon(Icons.arrow_circle_right_rounded),
                    iconSize: 70,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
