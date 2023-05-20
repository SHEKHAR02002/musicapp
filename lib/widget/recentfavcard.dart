import 'package:flutter/material.dart';
import 'package:musicapp/Theme/color.dart';
import 'package:musicapp/data/data.dart';

class RecentFavCard extends StatefulWidget {
  final Choice choice;
  const RecentFavCard({super.key, e, required this.choice});

  @override
  State<RecentFavCard> createState() => _RecentFavCardState();
}

class _RecentFavCardState extends State<RecentFavCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.choice.icon),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Text(
              widget.choice.title,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500, color: white),
            ),
            Text(
              widget.choice.title,
              style: TextStyle(fontSize: 12, color: grey),
            )
          ],
        ),
      ),
    );
  }
}
