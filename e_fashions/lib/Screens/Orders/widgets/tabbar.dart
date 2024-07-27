import 'package:flutter/material.dart';

class OrderTabbarWidget extends StatelessWidget {
  const OrderTabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      indicator: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.black),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      unselectedLabelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.transparent),
      tabs: [
        SizedBox(
          width: 170,
          height: 20,
          child: Tab(
            text: 'Delivered',
          ),
        ),
        SizedBox(
          width: 170,
          height: 40,
          child: Tab(
            text: 'Processing',
          ),
        ),
        SizedBox(
          width: 170,
          height: 40,
          child: Tab(
            text: 'Cancelled',
          ),
        ),
      ],
    );
  }
}
