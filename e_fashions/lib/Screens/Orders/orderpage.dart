import 'package:e_fashions/Screens/Orders/widgets/cancelledtab.dart';
import 'package:e_fashions/Screens/Orders/widgets/deliveredtab.dart';
import 'package:e_fashions/Screens/Orders/widgets/processingtab.dart';
import 'package:e_fashions/Screens/Orders/widgets/tabbar.dart';
import 'package:flutter/material.dart';

class Orderpage extends StatelessWidget {
  const Orderpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            actions: const [
              Icon(
                Icons.search,
              )
            ],
            bottom: const PreferredSize(
              preferredSize: Size(80, 90),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My Orders',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    OrderTabbarWidget()
                  ],
                ),
              ),
            ),
          ),
          body: const TabBarView(children: [
            DeliveredTab(),
            ProcessingTab(),
            CancelledTab(),
          ])),
    );
  }
}
