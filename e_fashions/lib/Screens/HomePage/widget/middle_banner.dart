import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class HomeMiddleBanner extends StatelessWidget {
  const HomeMiddleBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 700,
          width: MediaQuery.of(context).size.width - 16,
          child: Column(
            children: [
              const Image(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/e5/64/98/e5649883b37488f2da3138e17d9651be.jpg'),
                fit: BoxFit.cover,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 163,
                        color: whitteclr,
                        width: MediaQuery.of(context).size.width / 2 - 8,
                        child: const Center(
                            child: Text(
                          'Summer\nSale',
                          style: TextStyle(
                              color: redclr,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 8,
                            child: const Image(
                              image: NetworkImage(
                                  'https://jooinn.com/images/model-photoshoot-15.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Positioned(
                            bottom: 80,
                            left: 15,
                            child: Text(
                              'Black',
                              style: TextStyle(
                                  color: whitteclr,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 8,
                        height: 445.5,
                        child: const Image(
                          image: NetworkImage(
                              'https://i.pinimg.com/originals/76/9d/58/769d58c6464d37344711a49a78e2afa3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        bottom: 110,
                        left: 50,
                        child: Text(
                          'Men\'s\nHoodies',
                          style: TextStyle(
                              color: whitteclr,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
