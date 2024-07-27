import 'package:e_fashions/Screens/Orders/widgets/Cancelledcard.dart';
import 'package:flutter/material.dart';

class CancelledTab extends StatelessWidget {
  const CancelledTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: 
        List.generate(15, (index) => const Cancelledcard(),)
        
      ),
    );
  }
}
