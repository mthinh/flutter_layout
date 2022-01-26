import 'package:flutter/material.dart';

const imageUrl =
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight, image: NetworkImage(imageUrl))),
        child: const Center(
          child: Text(
            'Mai Thinh',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 100,
            ),
          ),
        ),
      ),
    );
  }
}
