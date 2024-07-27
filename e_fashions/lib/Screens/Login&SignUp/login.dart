import 'package:e_fashions/Screens/Login&SignUp/widgets/forgotpassword_page.dart';
import 'package:e_fashions/Screens/Login&SignUp/widgets/formfield_card.dart';
import 'package:e_fashions/Screens/Main%20Screen/mainScreen.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kheight10,
              GestureDetector(
                child: const Icon(
                  CupertinoIcons.back,
                  size: 35,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              kheight20,
              const Text(
                'Login',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              kheight20,
              const TextFormFieldCard(
                labeltext: 'Email',
              ),
              const TextFormFieldCard(
                labeltext: 'Password',
              ),
              kheight10,
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ForgotpasswordPage(),
                  ));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot your password?'),
                    kwidth10,
                    Icon(
                      Icons.arrow_right_alt_rounded,
                      color: Colors.red,
                      size: 30,
                    )
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ));
                        },
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Center(child: Text('Or sign up with social accounts')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        height: 70,
                        width: 90,
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Image(
                            image: NetworkImage(
                                'https://th.bing.com/th/id/R.0fa3fe04edf6c0202970f2088edea9e7?rik=joOK76LOMJlBPw&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fgoogle-logo-png-open-2000.png&ehk=0PJJlqaIxYmJ9eOIp9mYVPA4KwkGo5Zob552JPltDMw%3d&risl=&pid=ImgRaw&r=0'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        height: 70,
                        width: 90,
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Image(
                            image: NetworkImage(
                                'https://www.pngall.com/wp-content/uploads/13/FB-Logo-No-Background.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
