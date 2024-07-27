import 'package:e_fashions/Screens/Bag/widgets/button_widget.dart';
import 'package:e_fashions/Screens/Login&SignUp/login.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.chevron_left_rounded,
          size: 40,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Set New Password',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    kheight10,
                    const Text(
                      'To secure your account, please create a new password. Make sure it’s strong and unique.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    kheight25,
                    kheight25,
                    const Text(
                      'Enter new password',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    kheight20,
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text('Password'),
                        labelStyle: TextStyle(
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        ),
                      ),
                    ),
                    kheight20,
                    const Text(
                      'Confirm new password',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    kheight20,
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text('Confirm password'),
                        labelStyle: TextStyle(
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        ),
                      ),
                    ),
                    kheight25,
                    kheight25,
                    ButtonWidget(
                        content: 'Update Password',
                        destinationpage: const LoginPage())
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
