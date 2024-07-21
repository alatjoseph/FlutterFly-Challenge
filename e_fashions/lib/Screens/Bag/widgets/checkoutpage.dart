import 'package:e_fashions/Screens/Bag/widgets/addresscard.dart';
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
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddressCard(),
            kheight10,
            PaymentCard(),
            kheight20,
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Delivery Method',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              kheight20,
              Container(
      
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    DeliveryCard(image: 'https://pnghq.com/wp-content/uploads/fedex-logo-png-clipart-45810-1536x654.png',),
                    kwidtth20,
                     DeliveryCard(image: 'https://vectorseek.com/wp-content/uploads/2023/08/Printable-Usps-Logo-Vector.svg-.png',), 
                    kwidtth20,
                    //DeliveryCard(image: 'https://logodownload.org/wp-content/uploads/2015/12/dhl-express-logo-3.png',), 
                   
                    
                  ],
                ),
              )
            ])
          ],
        ),
      )),
    );
  }
}

class DeliveryCard extends StatelessWidget {
  String image;
   DeliveryCard({
    super.key,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SizedBox(
          height: 80,
            width: MediaQuery.of(context).size.width / 4,
            child:  Center(
              child: Column(
                children: [
                  Image(
                    image: NetworkImage(
                        image),
                      
                  ), 
                  const Text('2-3 days'),
                ],
              ),
            )),
      ),
    );
  }
}
