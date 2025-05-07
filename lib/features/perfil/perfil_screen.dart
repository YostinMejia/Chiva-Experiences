import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // 🧑 Ícono de perfil
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.grey[700],
                ),
              ),

              SizedBox(height: 20),

              // 👤 Nombre y correo
              Text(
                "aksjda",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "aksjda@gmail.com",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),

              SizedBox(height: 40),

              // 🔓 Botón Sign out
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child:Text("Sign out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
z
