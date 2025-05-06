import 'package:flutter/material.dart';

class CategoriaScreen extends StatelessWidget {
  CategoriaScreen({Key? key}) : super(key: key);

  // Lista de categorías quemadas
  final List<Category> categories = [
    Category(name: 'Comida', icon: Icons.restaurant, color: Colors.orangeAccent),
    Category(name: 'Eventos', icon: Icons.event, color: Colors.pinkAccent),
    Category(name: 'Cultura', icon: Icons.museum, color: Colors.purpleAccent),
    Category(name: 'Entretenimiento', icon: Icons.movie, color: Colors.blueAccent),
    Category(name: 'Aventura', icon: Icons.directions_bike, color: Colors.greenAccent),
    Category(name: 'Naturaleza', icon: Icons.park, color: Colors.tealAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorías', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final cat = categories[index];
            return Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CategoryDetailScreen(category: cat),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: cat.color.withOpacity(0.2),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Icon(cat.icon, size: 40, color: cat.color),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      cat.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Category {
  final String name;
  final IconData icon;
  final Color color;
  Category({required this.name, required this.icon, required this.color});
}

// Pantalla de detalle de categoría
class CategoryDetailScreen extends StatelessWidget {
  final Category category;
  const CategoryDetailScreen({Key? key, required this.category}) : super(key: key);

  // Datos quemados por categoría
  List<Item> get items {
    switch (category.name) {
      case 'Comida':
        return [
          Item(title: 'Restaurante A', color: Colors.orange.shade100),
          Item(title: 'Cafetería B', color: Colors.orange.shade200),
        ];
      case 'Eventos':
        return [
          Item(title: "Party Diddy's House", color: Colors.pink.shade100),
          Item(title: 'Concierto XYZ', color: Colors.pink.shade200),
        ];
      case 'Cultura':
        return [
          Item(title: 'Museo de Antioquia', color: Colors.purple.shade100),
          Item(title: 'Galería de Arte', color: Colors.purple.shade200),
        ];
      case 'Entretenimiento':
        return [
          Item(title: 'Cinepolis', color: Colors.blue.shade100),
          Item(title: 'Teatro Principal', color: Colors.blue.shade200),
        ];
      case 'Aventura':
        return [
          Item(title: 'Rafting Río Claro', color: Colors.green.shade100),
          Item(title: 'Parapente', color: Colors.green.shade200),
        ];
      case 'Naturaleza':
        return [
          Item(title: 'Jardín Botánico', color: Colors.teal.shade100),
          Item(title: 'Parque Arví', color: Colors.teal.shade200),
        ];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final list = items;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: category.color,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1,
          ),
          itemCount: list.length,
          itemBuilder: (context, index) {
            final item = list[index];
            return Container(
              decoration: BoxDecoration(
                color: item.color,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    item.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Item {
  final String title;
  final Color color;
  Item({required this.title, required this.color});
}