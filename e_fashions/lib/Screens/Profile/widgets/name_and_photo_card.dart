import 'package:e_fashions/constants/const.dart';
import 'package:flutter/material.dart';

class ProfileNameAndPhotoCard extends StatelessWidget {
  const ProfileNameAndPhotoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 30,
          child: ClipOval(
            child: Image(
              image: NetworkImage(
                  'https://i.pinimg.com/736x/07/33/ba/0733ba760b29378474dea0fdbcb97107.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        kwidtth20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jane Doe',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'janedoe@gmail.com',
              style: TextStyle(fontSize: 15),
            ),
          ],
        )
      ],
    );
  }
}
