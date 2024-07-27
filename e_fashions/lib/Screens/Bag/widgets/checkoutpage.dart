import 'package:e_fashions/Screens/Bag/success_screen.dart';
import 'package:e_fashions/Screens/Bag/widgets/addresscard.dart';
import 'package:e_fashions/Screens/Bag/widgets/button_widget.dart';
import 'package:e_fashions/Screens/Bag/widgets/paymentcard.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AddressCard(),
            kheight10,
            const PaymentCard(),
            kheight20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Delivery Method',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                kheight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DeliveryCard(
                      image:
                          'https://pnghq.com/wp-content/uploads/fedex-logo-png-clipart-45810-1536x654.png',
                    ),
                    kwidtth20,
                    DeliveryCard(
                      image:
                          'https://vectorseek.com/wp-content/uploads/2023/08/Printable-Usps-Logo-Vector.svg-.png',
                    ),
                    kwidtth20,
                    DeliveryCard(
                      image:
                          'https://www.city-golf.be/images/Home/Logos/DHL.webp',
                    ),
                  ],
                ),
                kheight20,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order :',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.grey),),
                    Text('112\$',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery :',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.grey),),
                    Text('15\$',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
                  ],
                ),
                kheight10,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Summary :',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.grey),),
                    Text('127\$',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),)
                  ],
                ),
                kheight20,
                ButtonWidget(content: 'SUBMIT ORDER', destinationpage: const SuccessScreen())
              ],
            )
          ],
        ),
      )),
    );
  }
}

// ignore: must_be_immutable
class DeliveryCard extends StatelessWidget {
  String image;
  DeliveryCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SizedBox(
            height: 80,
            width: MediaQuery.of(context).size.width / 4.5,
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: Image(
                      image: NetworkImage(image),
                    ),
                  ),
                  const Text('2-3 days'),
                ],
              ),
            )),
      ),
    );
  }
}
