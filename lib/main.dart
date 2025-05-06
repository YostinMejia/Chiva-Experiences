import 'package:chiva_experiences/app.dart';
import 'package:chiva_experiences/features/perfil/Pages/SignUp.dart';
import 'package:chiva_experiences/features/perfil/Pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginPage.id,
      routes: {
        "/" :(context) => LoginPage(),
        "/signup" :(context) => SignUpPage(),
        '/home': (context) => App(), 
      },
    );
  }
}
