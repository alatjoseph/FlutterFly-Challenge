import 'package:e_fashions/Screens/Shop/widget/category_card.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class KidsTab extends StatelessWidget {
  const KidsTab({
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
                'https://i.etsystatic.com/13416637/r/il/0b748b/2977674531/il_1588xN.2977674531_i3kq.jpg',
          ),
          kheight5,
          const CatagoryCard(
            category: 'Clothes',
            image:
                'https://i5.walmartimages.com/asr/a9c0b27f-a3f5-4bd7-9d3a-115e8d1b9790.68a5c05cca433194888d07f6fdcea96d.jpeg',
          ),
          kheight5,
          const CatagoryCard(
            category: 'Shoes',
            image:
                'https://mostexpensivearchive.com/wp-content/uploads/2022/04/rakesh-sitnoor-24UV2VJnwT8-unsplash.jpg',
          ),
          kheight5,
          const CatagoryCard(
            category: 'Accesories',
            image:
                'https://static.honeykidsasia.com/wp-content/uploads/2017/10/kids-accessories-hero-2.png',
          ),
        ],
      ),
    );
  }
}
