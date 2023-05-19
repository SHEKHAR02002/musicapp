import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/Theme/color.dart';
import 'package:musicapp/widget/filtercard.dart';
import 'package:musicapp/widget/songsmallcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int selectvalue;
  getfilter(int myvalue) {
    setState(() {
      selectvalue = myvalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    CupertinoIcons.bars,
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
            "Trending right now",
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 140,
            width: 200,
            decoration: BoxDecoration(
              color: transparntgrey,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                FilterCard(
                  title: "Trending ringht now",
                ),
                SizedBox(
                  width: 10,
                ),
                FilterCard(
                  title: "Rock",
                ),
                SizedBox(
                  width: 10,
                ),
                FilterCard(
                  title: "Hip Hop",
                ),
                SizedBox(
                  width: 10,
                ),
                FilterCard(
                  title: "Electro",
                ),
                SizedBox(
                  width: 10,
                ),
                FilterCard(
                  title: "Marathi",
                )
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return const SongCarssmall();
              })
        ],
      ),
    ));
  }
}
