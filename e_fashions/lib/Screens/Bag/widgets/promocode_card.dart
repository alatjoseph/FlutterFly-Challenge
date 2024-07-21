import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class PromoCodeCard extends StatelessWidget {
  String image;
  String offerName;
  String promocode;
  String days;
   PromoCodeCard({
    super.key,
    required this.image,
    required this.offerName,
    required this.promocode,
    required this.days
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: whitteclr,
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: 80,
      child:  Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 80,
              height: double.infinity,
              child: Image(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.contain,
              ),
            ),
            kwidth10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  offerName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                 promocode,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                 Text(
                  '$days remaining',
                  style: const TextStyle(fontSize: 14),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: redclr),
                  onPressed: (){}, child: const Text('Apply',style: TextStyle(color: whitteclr,fontWeight: FontWeight.bold,fontSize: 15),))
              ],
            )
          ],
        ),
      ),
    );
  }
}