import 'package:flutter/material.dart';

class NonMaterialWidget extends StatelessWidget {
  const NonMaterialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.black12),
        child: const Center(
            child: Text(
          'Hello world',
          textDirection: TextDirection
              .ltr, //Non-material widget, flutter does not know how to render textDirection

          style: TextStyle(color: Colors.amber, fontSize: 25),
        )));
  }
}
