import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      indicatorColor: redclr,
      tabs: [
        Tab(
          child: Text(
            'Womens',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
            child: Text(
          'Mens',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        )),
        Tab(
          child: Text('Kids',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
