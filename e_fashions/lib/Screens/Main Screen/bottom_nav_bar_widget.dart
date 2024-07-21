// import 'package:e_fashions/constants/const.dart';
// import 'package:flutter/material.dart';

// ValueNotifier<int> indexNotifier = ValueNotifier(0);

// class BottomNavBarWidget extends StatelessWidget {
//   const BottomNavBarWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ValueListenableBuilder(
//         valueListenable: indexNotifier,
//         builder: (context, newindex, _) {
//           return BottomNavigationBar(
//             currentIndex: newindex,
//             onTap: (index) {
//             indexNotifier.value=index;
            
//           },
//             selectedItemColor: redclr,
//             unselectedItemColor: Colors.grey,
//             selectedLabelStyle: const TextStyle(color: redclr, fontSize: 14),
//             unselectedLabelStyle:
//                 const TextStyle(color: Colors.grey, fontSize: 14),
//             selectedIconTheme: const IconThemeData(color: Colors.red),
//             unselectedIconTheme: const IconThemeData(color: Colors.grey),
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home, size: 30),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.shopping_cart, size: 30),
//                 label: "Shop",
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.shopping_bag, size: 30),
//                 label: 'Bag',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite_border_outlined, size: 30),
//                 label: "Favorites",
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.person_2_outlined, size: 30),
//                 label: 'Profile',
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

class Bottom_Nav_Widget extends StatelessWidget {
  const Bottom_Nav_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexNotifier,
      builder: (context, newindex, _) {
        return BottomNavigationBar(
         
          showUnselectedLabels: true,
          currentIndex: newindex,
          onTap: (index) {
            indexNotifier.value=index;
            
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.red),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Shop',
              backgroundColor: Colors.white,
            ),
           
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Bag',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Favourite',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.white,
            ),
          ],
        );
      },
    );
  }
}