import 'package:e_fashions/Screens/HomePage/widget/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class HomeImageCardList extends StatelessWidget {
  List image;
  List names;
  List types;
  List offertext;
  Color color;
  HomeImageCardList(
      {super.key,
      required this.image,
      required this.names,
      required this.types,
      required this.offertext,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            image.length,
            (index) => HomeCard(
                image: image[index],
                dressName: names[index],
                dressType: types[index],
                offertext: offertext.isEmpty ? 'New' : offertext[index],
                color: color),
          )),
    );
  }
}
