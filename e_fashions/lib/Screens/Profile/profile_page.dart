import 'package:e_fashions/Screens/Orders/orderpage.dart';
import 'package:e_fashions/Screens/Profile/widgets/name_and_photo_card.dart';
import 'package:e_fashions/Screens/Profile/widgets/profilecard.dart';
import 'package:e_fashions/Screens/Settings/settingspage.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
        ],
        leading: const SizedBox(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              kheight20,
              const ProfileNameAndPhotoCard(),
              kheight25,
              ProfileCard(
                heading: 'My orders',
                subheading: "Already have 12 orders",
                navigationpage: const Orderpage(),
              ),
              kheight25,
              ProfileCard(heading: 'Shipping address', subheading: "3 address"),
              kheight25,
              ProfileCard(heading: 'Payment methods', subheading: "Visa **34"),
              kheight25,
              ProfileCard(
                  heading: 'Promocodes',
                  subheading: "You have special promocode"),
              kheight25,
              ProfileCard(
                  heading: 'My reviews', subheading: "Reviews for 4 items"),
              kheight25,
              ProfileCard(
                heading: 'Settings',
                subheading: "Notification,Password",
                navigationpage: const SettingsPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
