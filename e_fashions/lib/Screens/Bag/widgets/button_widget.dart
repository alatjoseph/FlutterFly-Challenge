import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String content;
 final Widget destinationpage;
   ButtonWidget({
    super.key,
    required this.content,
    required this.destinationpage,

  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width/1.2,
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => destinationpage,));
            },
            child:  Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                  color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}