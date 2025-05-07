// profile_page.dart
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static String id = "profile_page";

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Welcome to your profile!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
