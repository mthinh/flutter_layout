import 'package:flutter/material.dart';
import 'package:flutter_plant_app_ui/constants.dart';

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset("assets/images/image_1.png"),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 40,
                      color: kPrimaryColor.withOpacity(0.3))
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Samatha".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    Text("\$400",
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: kPrimaryColor))
                  ],
                ),
                Text(
                  "RUSSIA",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: kPrimaryColor.withOpacity(0.5)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
