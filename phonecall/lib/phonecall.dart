import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Phonecall extends StatelessWidget {
  const Phonecall({super.key});

  @override
  Widget build(BuildContext context) {
    const number = '6238073779';
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: number,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phone Call',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () async {
              await launchUrl(launchUri);
            },
            child: const Text(
              'Make Call',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
      ),
    );
  }
}
