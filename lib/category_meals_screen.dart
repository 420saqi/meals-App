import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  const CategoryMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final routeArgument =
  ModalRoute.of(context)?.settings.arguments as Map<String,String>;
  final categoryTitle= routeArgument['title'];
  final categoryId = routeArgument['id'];
  return Scaffold(
      appBar: AppBar(
        title: Text((categoryTitle.toString())),
      ),
      body:const Center(
    child: Text('Category meals'),
    ),
    );
  }
}
