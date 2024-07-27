import 'package:e_fashions/Screens/Shop/widget/category_card.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class MensTab extends StatelessWidget {
  const MensTab({
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
                'https://i.pinimg.com/originals/5f/58/f0/5f58f03b886de83ae62c0116772aa50c.jpg',
          ),
          kheight5,
          const CatagoryCard(
            category: 'Clothes',
            image:
                'https://guidetoiceland.is/image/432039/x/0/icelandic-clothing-amp-fashion-brands-6.jpg',
          ),
          kheight5,
          const CatagoryCard(
            category: 'Shoes',
            image:
                'https://cdn11.bigcommerce.com/s-s62r70/images/stencil/1920w/uploaded_images/danner-quarry-work-boot-american-made-best-andscaping-boots-best-landscape-construction-boots.jpg?t=1561043379',
          ),
          kheight5,
          const CatagoryCard(
            category: 'Accesories',
            image:
                'https://i.pinimg.com/originals/4f/43/7f/4f437f51f1708cf092614c7d3112f9e2.jpg',
          ),
        ],
      ),
    );
  }
}
