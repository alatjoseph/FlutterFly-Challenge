import 'package:e_fashions/Screens/Bag/widgets/bag_item_card.dart';
import 'package:e_fashions/Screens/Bag/widgets/button_widget.dart';
import 'package:e_fashions/Screens/Bag/widgets/checkoutpage.dart';
import 'package:e_fashions/Screens/Bag/widgets/promocode_formfield.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           
            children: [
               const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 27,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My Bag',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 33),
                  ),
                  kheight10,
                  BagItemCard(
                    dressname: 'Pullover',
                    color: "Black",
                    image: ordereditemsimage[0],
                    price: '51\$',
                    size: 'L',
                  ),
                  kheight10,
                  BagItemCard(
                    dressname: 'T-shirt',
                    color: "Black",
                    image: ordereditemsimage[1],
                    price: '30\$',
                    size: 'L',
                  ),
                  kheight10,
                  BagItemCard(
                    dressname: 'Sport Dress',
                    color: "Black",
                    image: ordereditemsimage[2],
                    price: '43\$',
                    size: 'L',
                  ),
                ],
              ),
              kheight10,
              const PromoCodeFormField(),
              kheight20,
               const Row(
                children: [
                  Expanded(
                      child: Text(
                    'Total amount :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                  )),
                  Text(
                    '124\$',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ],
              ),
              kheight20,
              ButtonWidget(content: 'CHECK OUT',destinationpage: const CheckoutPage(),),
            ],
          ),
        ),
      ),
    ));
  }
}


