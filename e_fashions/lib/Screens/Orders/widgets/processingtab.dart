import 'package:e_fashions/Screens/Orders/widgets/processingcard.dart';
import 'package:flutter/material.dart';

class ProcessingTab extends StatelessWidget {
  const ProcessingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: 
        List.generate(15, (index) => const ProcessingCard(),)
        
      ),
    );
  }
}