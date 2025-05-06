import 'package:flutter/material.dart';
import 'domain/categoria.dart';
import 'routes/categoria_details.dart';
import 'widgets/catergoria_cart.dart';

class CategoriaScreen extends StatelessWidget {
  const CategoriaScreen({Key? key}) : super(key: key);

  List<Category> get _categories => const [
    Category(
      name: 'Comida',
      icon: Icons.restaurant,
      color: Colors.orangeAccent,
    ),
    Category(name: 'Eventos', icon: Icons.event, color: Colors.pinkAccent),
    Category(name: 'Cultura', icon: Icons.museum, color: Colors.purpleAccent),
    Category(
      name: 'Entretenimiento',
      icon: Icons.movie,
      color: Colors.blueAccent,
    ),
    Category(
      name: 'Aventura',
      icon: Icons.directions_bike,
      color: Colors.greenAccent,
    ),
    Category(name: 'Naturaleza', icon: Icons.park, color: Colors.tealAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categorías',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.95,
          ),
          itemCount: _categories.length,
          itemBuilder: (context, index) {
            final cat = _categories[index];
            return CategoryCard(
              category: cat,
              onTap: (context, category) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CategoryDetailScreen(category: category),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
