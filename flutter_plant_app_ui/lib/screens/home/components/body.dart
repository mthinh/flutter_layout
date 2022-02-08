import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/constants.dart';
import 'package:flutter_plant_app_ui/screens/home/components/header_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Total height and width of screen
    Size size = MediaQuery.of(context).size;

    // enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          // cover 20% of total height
          HeaderSearchbox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          )
        ],
      ),
    );
  }
}

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    this.title = "",
    required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomeUnderline(
            text: title,
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text("More", style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}

class TitleWithCustomeUnderline extends StatelessWidget {
  const TitleWithCustomeUnderline({
    Key? key,
    this.text = "",
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(text,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding / 4),
                child: Container(
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2),
                ),
              ),
            )
          ],
        ));
  }
}
