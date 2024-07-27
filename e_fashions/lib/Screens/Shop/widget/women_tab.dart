import 'package:e_fashions/Screens/Shop/widget/category_card.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class WomenTab extends StatelessWidget {
  const WomenTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: redclr,
                ),
                height: 100,
                width: double.infinity,
              ),
              const Positioned(
                bottom: 35,
                right: 80,
                child: Text(
                  'SUMMER SALES',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              const Positioned(
                left: 120,
                top: 66,
                child: Text(
                  'Up to 50% off',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              )
            ],
          ),
          kheight5,
          const CatagoryCard(
            category: "New",
            image:
                'https://i.pinimg.com/originals/66/03/5a/66035a64a7463fda9868aa1f07dcf936.jpg',
          ),
          kheight5,
          const CatagoryCard(
            category: 'Clothes',
            image:
                'https://th.bing.com/th/id/R.0e5005cfe3765ba057fe2f63d00f40b1?rik=gm9D0jaSLStOPQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-zbfH9Ex0zKs%2fUTpSXKeb2JI%2fAAAAAAAAqDE%2ffWlJEYdFlGg%2fs1600%2fSalwar%2bKameez%2b2013.jpg&ehk=V6JDJO88P2JmxlDLaZWtFpy060EpJgSMRjorSYrbU%2f8%3d&risl=&pid=ImgRaw&r=0',
          ),
          kheight5,
          const CatagoryCard(
            category: 'Shoes',
            image:
                'https://i.pinimg.com/originals/5d/24/76/5d24762428833ff0f90995acdbe1ff84.jpg',
          ),
          kheight5,
          const CatagoryCard(
            category: 'Accesories',
            image:
                'https://th.bing.com/th/id/OIP.RJoRvCwYonuVxRuEEwbM2AHaE7?rs=1&pid=ImgDetMain',
          ),
        ],
      ),
    );
  }
}
