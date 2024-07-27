import 'package:e_fashions/Screens/Bag/widgets/button_widget.dart';
import 'package:e_fashions/Screens/Main%20Screen/mainScreen.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: const Image(
                    image: NetworkImage(
                        'https://thumbs.dreamstime.com/b/vector-sale-poster-shopping-bag-promotion-label-sale-poster-shopping-bag-promotion-label-vector-107128714.jpg'),
                    fit: BoxFit.cover,
                  )),
              const Text(
                'Success!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const Expanded(
                  child: Text(
                      'Your order will be delivered soon.\nThank you for choosing our app!',
                      style: TextStyle(fontSize: 20))),
              ButtonWidget(
                content: 'CONTINUE SHOPPING',
                destinationpage:  const MainScreen(),
              )
            ],
          ),
        ),
      )),
    );
  }
}
