import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/screens/home/components/header_searchbox.dart';
import 'package:flutter_plant_app_ui/screens/home/components/recommended_plant_card.dart';
import 'package:flutter_plant_app_ui/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Total height and width of screen
    Size size = MediaQuery.of(context).size;
    PageController pageController = PageController(viewportFraction: 0.4);
    // enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          // cover 20% of total height
          HeaderSearchbox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          Container(
            constraints: const BoxConstraints(minHeight: 100, maxHeight: 300),
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                padEnds: false,
                physics: const PageScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) {
                  print(value);
                },
                itemBuilder: (context, index) {
                  return RecommendedPlantCard(size: size);
                }),
          ),
        ],
      ),
    );
  }
}
