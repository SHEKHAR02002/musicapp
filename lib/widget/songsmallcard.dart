import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:musicapp/Theme/color.dart';
import 'package:musicapp/data/data.dart';

class SongCarssmall extends StatefulWidget {
  final Page1data data;
  const SongCarssmall({super.key, required this.data});

  @override
  State<SongCarssmall> createState() => _SongCarssmallState();
}

class _SongCarssmallState extends State<SongCarssmall> {
  bool isplay = false;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer()..setAsset(widget.data.music);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

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
                Stack(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: white,
                        height: 50,
                        width: 50,
                      )),
                ]),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () async {
                        if (isplay) {
                          _audioPlayer.pause();
                          setState(() {
                            isplay = false;
                          });
                        } else {
                          _audioPlayer.play();
                          setState(() {
                            isplay = true;
                          });
                        }
                      },
                      child: Text(
                        widget.data.title,
                        style: TextStyle(
                          fontSize: 20,
                          color: isplay == true ? Colors.blue : white,
                        ),
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
