import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Viewwebsite extends StatefulWidget {
  const Viewwebsite({super.key});

  @override
  State<Viewwebsite> createState() => _ViewwebsiteState();
}

class _ViewwebsiteState extends State<Viewwebsite> {
  final Uri instagram = Uri.parse('https://www.instagram.com/accounts/login/');
  final Uri facebook = Uri.parse('https://www.facebook.com/login.php/');
  final Uri flutter = Uri.parse('https://flutter.dev/');

  Future<void> _launchUrl(Uri url) async {
    
      await launchUrl(url, mode: LaunchMode.inAppWebView);
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Website',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () => _launchUrl(facebook),
              child: const Text(
                'Go to Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              onPressed: () => _launchUrl(instagram),
              child: const Text(
                'Go to Instagram',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () => _launchUrl(flutter),
              child: const Text(
                'Go to Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
