import 'package:flutter/material.dart';

var stars = Row(
  children: const [
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
    Icon(Icons.star, color: Colors.amber),
  ],
);

final ratings = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    stars,
    const Text('170 reviews',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold))
  ],
);

const descTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

final iconsList = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
      children: const [
        Icon(
          Icons.kitchen,
          color: Colors.lightGreen,
        ),
        Text('PREP:'),
        Text('25 mins')
      ],
    ),
    Column(
      children: const [
        Icon(
          Icons.timer,
          color: Colors.lightGreen,
        ),
        Text('COOK:'),
        Text('1 hr')
      ],
    ),
    Column(
      children: const [
        Icon(
          Icons.restaurant,
          color: Colors.lightGreen,
        ),
        Text('FEEDS:'),
        Text('4-6')
      ],
    )
  ],
);

const titleText = Center(
  child: Text('Strawberry Pavlova'),
);

const descText = Center(
  child: Text(
    "Pavlova is a meringue-based dessertnamed alter the Russian ballerina Ana Pavlova. Pavlova fealures a crisp crust and soll. light inside, topped with fruit andwhipped cream.",
    textAlign: TextAlign.center,
  ),
);

class SimpleCard extends StatelessWidget {
  const SimpleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.amber.shade100),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              height: 300,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [titleText, descText, ratings, iconsList],
              ),
            )),
      ),
    );
  }
}
