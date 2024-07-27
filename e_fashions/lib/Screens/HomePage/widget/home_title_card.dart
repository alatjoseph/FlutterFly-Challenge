import 'package:flutter/material.dart';

class HomeTitleCard extends StatelessWidget {
  final String title;

  final String subtitle;

  const HomeTitleCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.grey,
                  fontSize: 15),
            )
          ],
        ),
        const Text(
          'View all ',
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 13),
        )
      ],
    );
  }
}
