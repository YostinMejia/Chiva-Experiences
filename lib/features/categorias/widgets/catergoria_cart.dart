import 'package:flutter/material.dart';
import '../domain/categoria.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final void Function(BuildContext, Category) onTap;
  const CategoryCard({super.key, required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 4,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => onTap(context, category),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // ignore: deprecated_member_use
                color: category.color.withOpacity(0.2),
              ),
              padding: const EdgeInsets.all(16),
              child: Icon(category.icon, size: 40, color: category.color),
            ),
            const SizedBox(height: 12),
            Text(
              category.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
