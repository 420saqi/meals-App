import 'package:flutter/material.dart';
import 'package:mealsapp/category_item.dart';
import 'package:mealsapp/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeals'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //width of each item
          childAspectRatio: 3 / 2, // if width =200 then height =300
          crossAxisSpacing: 11.0,
          mainAxisSpacing: 11.0,
        ),
        children: dummyCategories
            .map((catData) => CategoryItem(
                  itemTitle: catData.title,
                  itemColor: catData.color,
                ))
            .toList(),
      ),
    );
  }
}
