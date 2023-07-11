import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  const CategoryMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(('The Recipes')),
      ),
      body:const Center(
    child: Text('Category meals'),
    ),
    );
  }
}
