import 'package:e_fashions/Screens/Bag/widgets/bottom_sheet_content.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class PromoCodeFormField extends StatelessWidget {
  const PromoCodeFormField({
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
                  onPressed: () async {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return const BottomSheetContent();
                      },
                    );
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    color: whitteclr,
                  ))),
        )
      ],
    );
  }
}
