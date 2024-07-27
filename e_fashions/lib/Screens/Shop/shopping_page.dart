import 'package:e_fashions/Screens/Shop/widget/kid_tab.dart';
import 'package:e_fashions/Screens/Shop/widget/mens_tab.dart';
import 'package:e_fashions/Screens/Shop/widget/tabbar.dart';
import 'package:e_fashions/Screens/Shop/widget/women_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
          leading: const Icon(
            CupertinoIcons.left_chevron,
            color: Colors.black,
          ),
          bottom:
              const PreferredSize(preferredSize: Size(50, 40), child: Tabbar()),
        ),
        body: const TabBarView(
          children: [
            WomenTab(),
            MensTab(),
            KidsTab(),
          ],
        ),
      ),
    );
  }
}
