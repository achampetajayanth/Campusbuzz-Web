import 'package:flutter/material.dart';
import 'package:flutter_web/FOORM/DForm.dart';
import 'package:flutter_web/main.dart';

import '../../widgets/header.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/a1.jpg"),
            fit: BoxFit.cover,
          )),
        ),
        const Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 22),
              child: Text(
                "CAMPUSS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
        const Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 22),
              child: Text(
                "BUZZ",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
        const Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 150, top: 220),
              child: Text(
                "Welcome to CAMPUSBUZZ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 150, top: 290),
          child: Container(
            height: 30,
            width: 150,
            color: Colors.red,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FormScreen1(),
                      ));
                },
                child: Text(
                  "Host Events",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
      // backgroundColor: Colors.red,
      // appBar: AppBar(
      //    title: const Header(),
      // ),
    ));
  }
}
