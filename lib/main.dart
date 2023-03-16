import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:student_facilitation/screens/home.dart';
import 'package:student_facilitation/screens/login.dart';
import 'package:student_facilitation/screens/register.dart';
import 'package:student_facilitation/screens/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme:
              const TextTheme(bodyLarge: TextStyle(color: Colors.black54))),
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        MyLogin.id: (context) => MyLogin(),
        MyRegister.id: (context) => MyRegister(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
