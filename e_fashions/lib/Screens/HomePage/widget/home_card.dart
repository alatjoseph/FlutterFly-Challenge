import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeCard extends StatefulWidget {
  String image;
  String dressName;
  String dressType;
  String offertext;
  Color color;
  HomeCard(
      {super.key,
      required this.image,
      required this.dressName,
      required this.dressType,
      required this.offertext,
      required this.color
      });

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool iscliked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        height: MediaQuery.of(context).size.width / 2.5 + 30,
        width: MediaQuery.of(context).size.width / 2.7,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width / 2,
                  width: double.infinity,
                  child: Card(
                    child: Image(
                      image: NetworkImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 10,
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: FittedBox(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: widget.color),
                        onPressed: () {},
                        child:  Text(
                          widget.offertext ,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: whitteclr,
                              fontWeight: FontWeight.bold,
                              fontSize: 55),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        iscliked = !iscliked;
                      });
                    },
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: whitteclr,
                      child: Icon(
                        iscliked ? Icons.favorite : Icons.favorite_outline,
                        color: iscliked ? redclr : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              '⭐⭐⭐⭐⭐(10)',
              style: TextStyle(fontSize: 13),
            ),
            Text(
              widget.dressName,
              style: const TextStyle(fontSize: 13),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                widget.dressType,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                kwidtth20,
                Text(
                  '\$20',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    decorationStyle:TextDecorationStyle.solid,
                    fontSize: 13),
                ),
                kwidth10,
                Text(
                  '\$10',
                  style: TextStyle(
                    color: redclr,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
