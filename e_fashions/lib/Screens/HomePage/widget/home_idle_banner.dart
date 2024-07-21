import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class HomeIdleBanner extends StatelessWidget {
  const HomeIdleBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.7,
          width: double.infinity,
          child: const Image(
            image: NetworkImage(
                'https://th.bing.com/th/id/OIP.K2rOCcfC1shCTwDdy7PHYAAAAA?rs=1&pid=ImgDetMain'),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Fashion\nSale',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
                kheight10,
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {},
                    child: const Text(
                      'Check',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

