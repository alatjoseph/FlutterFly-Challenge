import 'package:e_fashions/Screens/Bag/widgets/button_widget.dart';
import 'package:e_fashions/Screens/Login&SignUp/set_password.dart';
import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  List<TextEditingController>? _controllers;
  List<FocusNode>? _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(6, (_) => TextEditingController());
    _focusNodes = List.generate(6, (_) => FocusNode());
  }

  @override
  void dispose() {
    _controllers?.forEach((controller) => controller.dispose());
    _focusNodes?.forEach((focusNode) => focusNode.dispose());
    super.dispose();
  }

  void _onFieldChanged(String value, int index) {
    if (value.length == 1) {
      if (index < _controllers!.length - 1) {
        FocusScope.of(context).requestFocus(_focusNodes?[index + 1]);
      } else {
        FocusScope.of(context).unfocus();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SafeArea(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures the column takes only as much space as needed
          children: [
            const Text(
              'Enter OTP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            kheight10,
              const Text(
              'A six digit code has been sent to your mail !',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey),
            ),
            kheight10, 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 40,
                  child: TextField(
                    controller: _controllers?[index],
                    focusNode: _focusNodes?[index],
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      counterText: "",
                    ),
                    onChanged: (value) => _onFieldChanged(value, index),
                  ),
                );
              }),
            ),
           kheight20,
           kheight20,// Spacing between OTP fields and button
            ButtonWidget(content: "Next", destinationpage: const SetPassword()),
          ],
        ),
      ),
    ),
  ),
);

  }
}
