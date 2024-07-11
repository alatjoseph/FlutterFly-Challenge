import 'package:database_connection/database/db_functions/db_functions.dart';
import 'package:database_connection/homePage.dart';
import 'package:database_connection/models/loginModel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              const SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Image(
                      image: NetworkImage(
                          'https://cdn-images-1.medium.com/v2/resize:fit:1600/1*mMJ3IvaAuMAmqjtyistCog.png'))),
              //SizedBox(height: 40,),
              TextFormField(
                controller: emailcontroller,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordcontroller,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, elevation: 0),
                    onPressed: () {
                      Loginmodel value = Loginmodel(
                        email: emailcontroller.text,
                        password: passwordcontroller.text,
                        id: null,
                      );
                      // insert data into db
                      inserdata(value);
                      // navigate to homepage with data in db
                      navigateToHomePage(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                height: 90,
              ),

              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'New User? Create Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void navigateToHomePage(BuildContext context) async {
    final data = await display();
    Navigator.push(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => Homepage(loginData: data),
      ),
    );
  }
}
