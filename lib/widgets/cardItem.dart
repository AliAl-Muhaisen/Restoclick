import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  // const CardItem({Key? key}) : super(key: key);
  final String image;
  final String title;
  final String description;

  const CardItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
        ),
        width: 300,
        height: 300,
        child: FittedBox(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Image.network(
                    image,
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          fontSize: 70,
                          color: Colors.black26,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
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
