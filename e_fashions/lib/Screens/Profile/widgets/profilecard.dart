import 'package:e_fashions/Screens/Profile/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileCard extends StatelessWidget {
  String heading;
  String subheading;
  Widget navigationpage;
   ProfileCard({
    super.key,
    required this.heading,
    required this.subheading,
    this.navigationpage=const ProfilePage()
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  navigationpage,));
      } ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                subheading,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
          const Icon(CupertinoIcons.right_chevron,
          size: 20,)
        ],
      ),
    );
  }
}
