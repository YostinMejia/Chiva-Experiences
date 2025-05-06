import 'package:chiva_experiences/common/custom_bottom_nav_bar.dart';
import 'package:chiva_experiences/common/top_bar.dart';
import 'package:chiva_experiences/features/categorias/categoria_screen.dart';
import 'package:chiva_experiences/features/home/home_screen.dart';
import 'package:chiva_experiences/features/mapa/mapa_screen.dart';
import 'package:chiva_experiences/features/perfil/perfil_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    final pages = [
      CategoriaScreen(),
      MapaScreen(),
      HomeScreen(),
      PerfilScreen()
    ];
    return  MaterialApp(
      home: Home(pages: pages,),
    );
  }
}

class Home extends StatefulWidget {
  final List<Widget> pages;
  
  const Home({
    super.key,
    required this.pages
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavBar(currentIndex: _currentIndex, onTap: (index){
        setState(() {
          _currentIndex = index;
        });
      }),
      body:widget.pages[_currentIndex]
    );
  }
}
