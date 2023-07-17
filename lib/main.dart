import 'package:flutter/material.dart';
import 'package:mealsapp/screens/category_meals_screen.dart';
import 'package:mealsapp/screens/category_screen.dart';
import 'package:mealsapp/screens/filters_screen.dart';
import 'package:mealsapp/screens/meals_details_screen.dart';
import 'package:mealsapp/screens/tab_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const categoryMealsScreen = 'category-meals';
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMealsDemo',
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
            titleMedium: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const CategoriesScreen(),
      routes: {
        '/': (context) => const TabsBarScreen(), // default route
        'category-meals': (context) => const CategoryMealScreen(),
        MealsDetailScreen.mealsScreenRoute: (context) => MealsDetailScreen(),
        FiltersScreen.filtersRouteName :(context) =>  FiltersScreen(),
      },

      // in case some route isn't defined in above routes section
      // then onGenerate route will be executed taking the user to
      // CategoriesScreen

      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(
          builder: (context) => const CategoriesScreen(),
        );
      },

      // In case the route is not set in routes section and nor the
      // onGenerateRoute is set then onUnknowRoute will get executed
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
    );
  }
}
