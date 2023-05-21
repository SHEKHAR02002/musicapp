import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/Theme/color.dart';
import 'package:musicapp/data/data.dart';
import 'package:musicapp/widget/filtercard.dart';
import 'package:musicapp/widget/page1topcard.dart';
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
    double width = MediaQuery.of(context).size.width;
    TextEditingController search = TextEditingController();

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
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: width - 120,
                decoration: BoxDecoration(
                  color: transparntgrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  onChanged: (value) async {},
                  controller: search,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        child: Icon(
                          CupertinoIcons.search,
                          size: 20,
                          color: white,
                        )),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: transparntgrey,
                  ),
                ),
              )
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
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                TopCard(),
                SizedBox(
                  width: 10,
                ),
                TopCard(),
                SizedBox(
                  width: 10,
                ),
                TopCard(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 35,
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
                return SongCarssmall(
                  data: page1[index],
                );
              })
        ],
      ),
    ));
  }
}
