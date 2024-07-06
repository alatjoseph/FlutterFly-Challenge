import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('HomePage',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),backgroundColor: Colors.blue,),
      body: const SafeArea(
        
          child: Center(
        child: Text('This is Home Page'),
      )),
    );
  }
}
