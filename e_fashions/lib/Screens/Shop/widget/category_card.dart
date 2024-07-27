import 'package:flutter/material.dart';

class CatagoryCard extends StatelessWidget {
  final String category;
  final String image;
  const CatagoryCard({super.key, required this.category, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                category,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Expanded(
                child: Image(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ))
          ],
        ),
      ),
    );
  }
}
