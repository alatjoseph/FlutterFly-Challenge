import 'package:e_fashions/Screens/Bag/widgets/button_widget.dart';
import 'package:e_fashions/Screens/Login&SignUp/login.dart';
import 'package:e_fashions/Screens/Login&SignUp/widgets/otpfield.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class ForgotpasswordPage extends StatelessWidget {
  const ForgotpasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.chevron_left_rounded,
          size: 35,
        ),
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: redclr),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ));
              },
              child: const Text(
                "Login",
                style: TextStyle(
                    color: whitteclr,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )),
          kwidth10
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            kheight20,
            const Text(
              'Forgot Your Password?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            kheight20,
            kheight20,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'No worries! Please enter your email address associated with your account, and we’ll send you an OTP to reset your password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  kheight20,
                  kheight20,
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text('Enter your email'),
                        labelStyle: TextStyle(
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(14.0)))),
                  ),
                  kheight20,
                  const Spacer(),
                  ButtonWidget(
                      content: 'Sent OTP', destinationpage: const OTPPage()),
                  kheight20,
                  kheight20
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
