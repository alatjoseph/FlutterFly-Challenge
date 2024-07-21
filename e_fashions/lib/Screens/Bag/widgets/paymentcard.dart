import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Payment',
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Change',
                  style: TextStyle(color: redclr, fontSize: 15),
                ))
          ],
        ),
         Row(
          
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width/4.3,
                  child: const Image(image: NetworkImage('https://logos-world.net/wp-content/uploads/2020/09/Mastercard-Logo-2016-2020.png'),)),
              ),
            ),
            kwidtth20,
            const Text('**** **** **** 1234',style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        )
      ],
    );
  }
}
