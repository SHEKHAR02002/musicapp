import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/Theme/color.dart';
import 'package:musicapp/widget/recentfavcard.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // List images = [
  //   'assets/images/one.png',
  //   'assets/images/two.jpg',
  //   'assets/images/three.jpg'
  // ];
  // List title = [
  //   'Bright Hits',
  //   'Millions',
  //   'Family',
  //   'Millions',
  //   'Hindi',
  //   'Marathi'
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: transparntgrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  CupertinoIcons.back,
                  size: 30,
                  color: white,
                ),
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: transparntgrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  CupertinoIcons.heart,
                  size: 30,
                  color: white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Recent favourites",
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 5),
            itemBuilder: (context, index) => RecentFavCard(
                  choice: choices[index],
                ))
      ]),
    ));
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final String icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Bright Hitd', icon: 'assets/images/one.png'),
  Choice(title: 'Millions', icon: 'assets/images/two.jpg'),
  Choice(title: 'Family', icon: 'assets/images/three.jpg'),
  Choice(title: 'Millions', icon: 'assets/images/one.png'),
  Choice(title: 'Hindi', icon: 'assets/images/two.jpg'),
  Choice(title: 'Marathi', icon: 'assets/images/three.jpg'),
];
