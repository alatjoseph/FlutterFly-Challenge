import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BagItemCard extends StatelessWidget {
  String dressname;
  String image;
  String color;
  String size;
  String price;
  BagItemCard({
    super.key,
    required this.dressname,
    required this.image,
    required this.color,
    required this.price,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 5,
              color: whitteclr,
              child: Image(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dressname,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Color : ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            color,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          kwidtth20,
                          const Text(
                            'Size : ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            size,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      kheight10,
                      const Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: whitteclr,
                              child: Icon(Icons.remove)),
                          kwidth10,
                          Text(
                            '1',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          kwidth10,
                          CircleAvatar(
                              backgroundColor: whitteclr,
                              child: Icon(Icons.add))
                        ],
                      )
                    ],
                  ),
                ),
                kwidtth20,
                kwidtth20,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.more_vert),
                    Text(
                      price,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
