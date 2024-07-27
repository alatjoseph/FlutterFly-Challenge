import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

bool isSwitched1 = false;
bool isSwitched2 = false;
bool isSwitched3 = false;

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(
          onPressed: () {},
          child: GestureDetector(
            onTap: Navigator.of(context).pop,
            child: const Icon(
              Icons.chevron_left,
              size: 35,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 25,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Settings',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            kheight20,
            const Text(
              'Personal Informatiom',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            kheight20,
            const Card(
              elevation: 0,
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    kwidtth20,
                    Center(child: Text('Full name')),
                  ],
                ),
              ),
            ),
            kheight20,
            const Card(
              elevation: 0,
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    kwidtth20,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(child: Text('Date of Birth')),
                        Text(
                          '24/01/2003',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            kheight20,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Password',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Change',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
            kheight10,
            const Card(
              elevation: 0,
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    kwidtth20,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                            child: Text('Password',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold))),
                        Text(
                          '**************',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            kheight20,
            const Text(
              'Notification',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            kheight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sales',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Transform.scale(
                  scale: .7,
                  child: Switch(
                    value: isSwitched1,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey[750],
                    onChanged: (value) {
                      setState(() {
                        isSwitched1 = value;
                      });
                    },
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New arrivals',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Transform.scale(
                  scale: .7,
                  child: Switch(
                    value: isSwitched2,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey[750],
                    onChanged: (value) {
                      setState(() {
                        isSwitched2 = value;
                      });
                    },
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Delivery status changes',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Transform.scale(
                  scale: .7,
                  child: Switch(
                    value: isSwitched3,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey[750],
                    onChanged: (value) {
                      setState(() {
                        isSwitched3 = value;
                      });
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
