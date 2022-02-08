import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/constants.dart';
import 'package:flutter_plant_app_ui/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PlantApp',
      theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          primaryColor: kPrimaryColor,
          appBarTheme: const AppBarTheme(color: kPrimaryColor),
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HomeScreen(),
    );
  }
}
