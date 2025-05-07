import 'package:chiva_experiences/common/custom_bottom_nav_bar.dart';
import 'package:chiva_experiences/common/top_bar.dart';
import 'package:chiva_experiences/features/categorias/categoria_screen.dart';
import 'package:chiva_experiences/features/home/home_screen.dart';
import 'package:chiva_experiences/features/mapa/mapa_screen.dart';
import 'package:chiva_experiences/features/perfil/perfil_screen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final pages = [CategoriaScreen(), MapaScreen(), HomeScreen(), PerfilScreen()];

  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
      body: pages[_currentIndex],
    );
  }
}
