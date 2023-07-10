
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
final String itemTitle;
final Color itemColor;

  const CategoryItem({required this.itemTitle,required this.itemColor,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            itemColor.withOpacity(0.7),
            itemColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
      ),
      child:Text(itemTitle),
    );
  }
}
