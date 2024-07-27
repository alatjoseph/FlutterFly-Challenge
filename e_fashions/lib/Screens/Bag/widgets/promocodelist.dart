import 'package:e_fashions/Screens/Bag/widgets/promocode_card.dart';
import 'package:e_fashions/constants/list.dart';
import 'package:flutter/material.dart';

class PromocodeListBottomSheet extends StatelessWidget {
  const PromocodeListBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height * 0.6, // Example height, adjust as needed
      child: Column(
        children: [

          
          Expanded(
            child: ListView.builder(
              itemCount: offersnameList.length,
              itemBuilder: (context, index) {
                return PromoCodeCard(
                  image: offerimage[index],
                  offerName: offersnameList[index],
                  promocode: promoCodes[index],
                  days: '4 days',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



// Column(
//       children: [
//         PromoCodeCard(
//           image:
//               'https://www.dazzleprinting.com/wp-content/uploads/2023/01/client-discount.jpg',
//           days: '6',
//           offerName: 'Personal offer',
//           promocode: '123',
//         ),
//         kheight10,
//         PromoCodeCard(
//           image:
//               'https://p2.hiclipart.com/preview/4/508/863/discount-tag-with-20-off-discount-tag-discount-label-discount-tag-with-20-off-logo-labelm-circle-yellow-meter-area-png-clipart.jpg',
//           days: '6',
//           offerName: 'Personal offer',
//           promocode: '123',
//         ),
//         kheight10,
//         PromoCodeCard(
//           image:
//               'https://www.pngplay.com/wp-content/uploads/6/Black-Star-50-Off-Transparent-PNG.png',
//           days: '6',
//           offerName: 'Personal offer',
//           promocode: '123',
//         ),
//         kheight10,
//         PromoCodeCard(
//           image:
//               'https://w7.pngwing.com/pngs/818/522/png-transparent-special-offer-poster-computer-icons-discounts-and-allowances-icon-design-price-tag-miscellaneous-text-logo.png',
//           days: '6',
//           offerName: 'Personal offer',
//           promocode: '123',
//         ),
//         PromoCodeCard(
//           image:
//               'https://www.dazzleprinting.com/wp-content/uploads/2023/01/client-discount.jpg',
//           days: '6',
//           offerName: 'Personal offer',
//           promocode: '123',
//         ),
//         kheight10,
//         PromoCodeCard(
//           image:
//               'https://p2.hiclipart.com/preview/4/508/863/discount-tag-with-20-off-discount-tag-discount-label-discount-tag-with-20-off-logo-labelm-circle-yellow-meter-area-png-clipart.jpg',
//           days: '6',
//           offerName: 'Personal offer',
//           promocode: '123',
//         ),
//         kheight10,
//         PromoCodeCard(
//           image:
//               'https://www.pngplay.com/wp-content/uploads/6/Black-Star-50-Off-Transparent-PNG.png',
//           days: '6',
//           offerName: 'Personal offer',
//           promocode: '123',
//         ),
//         kheight10,
//         PromoCodeCard(
//           image:
//               'https://w7.pngwing.com/pngs/818/522/png-transparent-special-offer-poster-computer-icons-discounts-and-allowances-icon-design-price-tag-miscellaneous-text-logo.png',
//           days: '6',
//           offerName: 'Personal offer',
//           promocode: '123',
//         ),
//       ],
//     );