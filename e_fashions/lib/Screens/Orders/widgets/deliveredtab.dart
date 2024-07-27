import 'package:e_fashions/Screens/Orders/widgets/delivered_card.dart';
import 'package:flutter/material.dart';

class DeliveredTab extends StatelessWidget {
  const DeliveredTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: 
        List.generate(15, (index) => const DeliveredCard(),)
        
      ),
    );
  }
}

