import 'package:database_connection/database/db_functions/db_functions.dart';
import 'package:database_connection/loginpage.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());

  await OpenLoginDB();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}
