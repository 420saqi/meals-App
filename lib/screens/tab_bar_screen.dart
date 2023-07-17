import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealsapp/screens/category_screen.dart';
import 'package:mealsapp/screens/favourite_screen.dart';
import 'package:mealsapp/widget/main_drawer_for_tabBar.dart';

class TabsBarScreen extends StatefulWidget {
  const TabsBarScreen({super.key});

  @override
  State<TabsBarScreen> createState() => _TabsBarScreenState();
}

class _TabsBarScreenState extends State<TabsBarScreen> {

  final tabBarItems=[
    CategoriesScreen(),
    FavouriteScreen(),
  ];

  int selectedIndex=0;
  void selectedItem(index){
    setState(() {
      selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabBarItems[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white60,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        onTap: selectedItem,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favourites'),
        ],
      ),
    );
  }
}

// class _TabsBarScreenState extends State<TabsBarScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       // initialIndex: 0, // default is 0 means categoriesScreen is selected
//         length: 2,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('Deli Meals'),
//             bottom: TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.category),text: 'Category',),
//                 Tab(icon: Icon(Icons.favorite),text: 'Favourite',)
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               CategoriesScreen(),
//               FavouriteScreen(),
//             ],
//           ),
//         ));
//   }
// }
