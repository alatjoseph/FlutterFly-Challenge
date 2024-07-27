import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class BottomSheetFormField extends StatelessWidget {
  const BottomSheetFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: 'Enter your promo code '),
            ),
          ),
        ),
        Positioned(
          top: 9,
          right: 4,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_forward,
                color: whitteclr,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
