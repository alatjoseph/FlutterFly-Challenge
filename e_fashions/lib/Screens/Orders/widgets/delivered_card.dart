import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class DeliveredCard extends StatelessWidget {
  const DeliveredCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 4,
        child: SizedBox(
          height: 140,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                kheight10,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order No : 1927345',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      '19-07-2024',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Tracking Number :',
                      style: TextStyle(fontSize: 17),
                    ),
                    kwidtth20,
                    Text(
                      'IWE3RT567R',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'Quantity :',
                      style: TextStyle(fontSize: 17),
                    ),
                    kwidtth20,
                    Expanded(
                        child: Text(
                      '3',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    )),
                    kwidtth20,
                    Text(
                      'Total Amount :',
                      style: TextStyle(fontSize: 17),
                    ),
                    kwidtth20,
                    Text(
                      '112\$',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              color: Colors.black, width: 2)),
                      onPressed: () {},
                      child: const Text(
                        'Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    ),
                    const Text('Delivered',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.green),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
