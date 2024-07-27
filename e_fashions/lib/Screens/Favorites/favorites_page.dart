import 'package:e_fashions/constants/const.dart';
import 'package:e_fashions/constants/list.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Favourites',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              kheight20,
              Expanded(
                child: FavoritesList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoritesList extends StatelessWidget {
  const FavoritesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: newDressImageList.length,
      itemBuilder: (context, index) {
        return FavouriteCard(
          image: newDressImageList[index],
          name: NewDressNames[index],
        );
      },
    );
  }
}

// ignore: must_be_immutable
class FavouriteCard extends StatelessWidget {
  String image;
  String name;
  FavouriteCard({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              child: Image(
                image: NetworkImage(image),
                fit: BoxFit.contain,
              ),
            ),
            kwidtth20,
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                     
                    ),
                    maxLines: 1,
                  ),
                  const Text(
                    '\$ 20',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.favorite,
              color: redclr,
            ),
          ],
        ),
      ),
    );
  }
}
