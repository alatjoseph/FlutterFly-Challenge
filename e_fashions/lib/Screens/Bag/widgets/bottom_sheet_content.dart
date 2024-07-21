import 'package:e_fashions/Screens/Bag/widgets/bottomsheet_formfield.dart';
import 'package:e_fashions/Screens/Bag/widgets/promocodelist.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 450,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.only(top: 18, right: 15, left: 15),
            child: ListView(
              children: [
                const BottomSheetFormField(),
                kheight20,
                const Text(
                  'Your Promo Codes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

               
                Promocodelist()
              ],
            ),
          ),
        ),
        Positioned(
            top: 10,
            left: MediaQuery.of(context).size.width / 2.5,
            child: Container(
              height: 5,
              width: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            ))
      ],
    );
  }
}
