import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/Theme/color.dart';
import 'package:musicapp/screens/homepage.dart';
import 'package:musicapp/screens/searchpage.dart';

int selectedIndex = 0;

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  final screen = [
    const HomePage(),
    const Search(),
    const HomePage(),
    const Search(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        IndexedStack(
          index: selectedIndex,
          children: screen,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Align(
            alignment: const Alignment(0.0, 1.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: transparntgrey,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.grey,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  currentIndex: selectedIndex,
                  onTap: (int index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.home,
                          size: 20.0,
                        ),
                        label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.search,
                          size: 20.0,
                        ),
                        label: "Search"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.double_music_note,
                          size: 20.0,
                        ),
                        label: "Music"),
                    BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.person,
                          size: 20.0,
                        ),
                        label: "Profile"),
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}
