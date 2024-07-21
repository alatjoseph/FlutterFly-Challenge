import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight10,
        const Text(
          'Shipping address',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        kheight10,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10)
              ), 
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Jane Doe',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        TextButton(onPressed: (){}, child: const Text('Change',style: TextStyle(color: redclr,fontSize: 16),))
                      ],
                    ),
                     const Text('3 Bridge Court\nChino Hills,CA 91709,United states',style: TextStyle(fontSize: 15),),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
