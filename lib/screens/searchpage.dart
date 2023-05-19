import 'package:flutter/material.dart';
import 'package:musicapp/Theme/color.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Search page",
        style: TextStyle(color: white),
      )),
    );
  }
}
