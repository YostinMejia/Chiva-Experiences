import 'package:flutter/material.dart';
import 'package:chiva_experiences/features/perfil/Pages/login_page.dart';
import 'package:chiva_experiences/features/perfil/Pages/profle_page.dart';
import 'package:chiva_experiences/features/perfil/Pages/SignUp.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: ProfilePage.id,
      routes: {
        LoginPage.id: (_) => LoginPage(),
        SignUpPage.id: (_) => SignUpPage(),
        ProfilePage.id: (_) => ProfilePage(),
      },
    );
  }
}
class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});
  @override
  Widget build(BuildContext context) => const MyApp();
}