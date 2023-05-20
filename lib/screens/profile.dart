import 'package:flutter/material.dart';
import 'package:musicapp/Theme/color.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name : Chandrashekhar Gopa Ingle",
                style: TextStyle(fontSize: 16, color: white),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Qualification : B.E. (Computer Engineering)",
                style: TextStyle(fontSize: 16, color: white),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Interest : Fultter Devloper",
                style: TextStyle(fontSize: 16, color: white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
