import 'package:e_fashions/Screens/Bag/bag_page.dart';
import 'package:e_fashions/Screens/Favorites/favorites_page.dart';
import 'package:e_fashions/Screens/Main%20Screen/bottom_nav_bar_widget.dart';
import 'package:e_fashions/Screens/Profile/profile_page.dart';
import 'package:e_fashions/Screens/Shop/shopping_page.dart';
import 'package:e_fashions/screens/HomePage/homepage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final pages = const [
    Homepage(),
    ShoppingPage(),
    BagPage(),
    FavoritesPage(),
    ProfilePage(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexNotifier,
          builder: (context, int value, _) {
            return pages[value];
          },
        ),
        bottomNavigationBar: const Bottom_Nav_Widget());
  }
}

