import 'package:flutter/material.dart';
import 'package:musicapp/Theme/color.dart';

class FilterCard extends StatefulWidget {
  final String title;

  const FilterCard({
    super.key,
    required this.title,
  });

  @override
  State<FilterCard> createState() => _FilterCardState();
}

class _FilterCardState extends State<FilterCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(
            0xff274bcd,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 12, color: white),
          ),
        ),
      ),
    );
  }
}
