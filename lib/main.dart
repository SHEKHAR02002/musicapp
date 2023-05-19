import 'package:flutter/material.dart';
import 'package:musicapp/Theme/color.dart';
import 'package:musicapp/bottomnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: black,
            foregroundColor: primaryColor,
            elevation: 0,
          ),
          fontFamily: "Overpass",
          scaffoldBackgroundColor: black,
          primaryColor: primaryColor,
          secondaryHeaderColor: primary2Color,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
              .copyWith(background: white)),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    // Connectivity().onConnectivityChanged.listen((event) {
    //   setState(() {
    //     result = event;
    //   });
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Bottombar();
  }
}
