import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, //width of each item
            childAspectRatio: 3/2, // if width =200 then height =300
          crossAxisSpacing: 11.0,
            mainAxisSpacing: 11.0,
         ),
      children: const [

      ],
    );
  }
}
