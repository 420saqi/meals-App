import 'package:flutter/material.dart';

class MealsDetailScreen extends StatelessWidget {
static const mealsScreenRoute= '/meals_screen' ;

  @override
  Widget build(BuildContext context) {
  var mealsId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealsId),
      ),
      body: Center(
        child: Text(mealsId, style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
