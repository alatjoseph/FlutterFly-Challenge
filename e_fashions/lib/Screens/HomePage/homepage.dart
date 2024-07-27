import 'package:e_fashions/Screens/HomePage/widget/Home_title_card.dart';
import 'package:e_fashions/Screens/HomePage/widget/home_idle_banner.dart';
import 'package:e_fashions/Screens/HomePage/widget/imageListWidget.dart';
import 'package:e_fashions/Screens/HomePage/widget/middle_banner.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:e_fashions/constants/list.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitteclr,
      body: ListView(
        shrinkWrap: true,
        children: [
          const HomeIdleBanner(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HomeTitleCard(
                  title: 'Sale',
                  subtitle: 'Super summer sale',
                ),
                HomeImageCardList(
                  image: SaleImagesList,
                  names: saleDressNames,
                  types: dressTypes,
                  offertext: offervalue,
                  color: redclr,
                ),
                const HomeTitleCard(
                  title: 'New',
                  subtitle: 'You\'ve never seen it before!',
                ),
                HomeImageCardList(
                  image: newDressImageList,
                  names: NewDressNames,
                  types: dressTypes,
                  color: Colors.black,
                  offertext: const [],
                ),
                kheight20,
                const HomeMiddleBanner(),
                kheight10,
                const HomeTitleCard(
                  title: 'Trending',
                  subtitle: 'Trending sale',
                ),
                HomeImageCardList(
                  image: SaleImagesList,
                  names: saleDressNames,
                  types: dressTypes,
                  offertext: offervalue,
                  color: redclr,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
