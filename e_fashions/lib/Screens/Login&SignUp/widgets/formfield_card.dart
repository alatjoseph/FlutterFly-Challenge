import 'package:flutter/material.dart';

class TextFormFieldCard extends StatelessWidget {
  final String labeltext;
  const TextFormFieldCard({
    super.key,
    required this.labeltext,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
            label: Text(labeltext),
            labelStyle: const TextStyle(
              fontSize: 15,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
