import 'package:flutter/cupertino.dart';
import 'package:musicapp/Theme/color.dart';

class TopCard extends StatefulWidget {
  const TopCard({super.key});

  @override
  State<TopCard> createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 180,
        width: 280,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/page1one.jpg'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      Positioned(
        top: 80,
        left: 10,
        child: Container(
          height: 80,
          width: 250,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(50, 187, 255, 5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The Dark Side",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: white),
                    ),
                    Text(
                      "Music - simulation Theroy",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: white),
                    )
                  ],
                ),
                const Spacer(),
                Icon(
                  CupertinoIcons.play_circle_fill,
                  color: white,
                  size: 50,
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
