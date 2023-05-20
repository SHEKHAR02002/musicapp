import 'package:flutter/cupertino.dart';
import 'package:musicapp/Theme/color.dart';
import 'package:musicapp/data/data.dart';

class SongCarssmall extends StatefulWidget {
  final Page1data data;
  const SongCarssmall({super.key, required this.data});

  @override
  State<SongCarssmall> createState() => _SongCarssmallState();
}

class _SongCarssmallState extends State<SongCarssmall> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // color: transparntgrey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: white,
                      height: 50,
                      width: 50,
                    )),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.title,
                      style: TextStyle(
                        fontSize: 20,
                        color: white,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      widget.data.subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: grey,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Icon(
                  CupertinoIcons.heart,
                  color: white,
                  size: 25,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
