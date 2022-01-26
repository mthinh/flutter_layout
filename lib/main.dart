import 'package:flutter/material.dart';
import 'package:flutter_layout/layout/non_material_widget.dart';
import 'package:flutter_layout/layout/background_image.dart';
import 'package:flutter_layout/layout/row_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        // home: BackgroundImage()
        home: SimpleCard());
  }
}
