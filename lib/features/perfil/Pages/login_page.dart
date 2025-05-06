import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String id = "login_page ";

  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5DC),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Log \nIn".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 35.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "signup");
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              _textFieldEmail(),
              _textFieldPassword(),
              SizedBox(height: 20.0),
              _buttonLogin(context),
            ],
          ),
        ),
      ),
    );
  }


  Widget _textFieldEmail() {
    return TextFieldGeneral(
      labelText: 'Email',
      hintText: 'Example@mail.com',
      icon: Icons.email_outlined,
      onChanged: (value) {},
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _textFieldPassword() {
    return TextFieldGeneral(
      labelText: 'Password',
      hintText: 'Enter your password',
      icon: Icons.lock_outline_rounded,
      onChanged: (value) {},
      keyboardType: TextInputType.text,
      obscureText: true,
    );
  }

 Widget _buttonLogin(BuildContext context) {  // Added missing parenthesis
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/home'); // Redirige a HomeScreen
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.brown,
        padding: const EdgeInsets.all(16.0),
      ),
      child: const Text('Login'),
    ),
  );
}
}

class TextFieldGeneral extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Function(String) onChanged;
  final TextInputType keyboardType;
  final IconData icon;
  final bool obscureText;

  const TextFieldGeneral({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.onChanged,
    required this.keyboardType,
    required this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          prefixIcon: Icon(icon),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
