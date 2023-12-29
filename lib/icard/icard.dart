import 'package:flutter/material.dart';

// ignore: camel_case_types
class icard extends StatefulWidget {
  const icard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _icardState createState() => _icardState();
}

// ignore: camel_case_types
class _icardState extends State<icard> {
  bool isHovered = false;
  Offset mousePosition = Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _updateHover(true),
      onHover: (event) => _updateMousePosition(event),
      onExit: (_) => _updateHover(false),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey, Colors.white],
          ),
        ),
        child: Stack(
          children: [backImage()],
        ),
      ),
    );
  }

  backImage() {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 1000),
      curve: Curves.easeOutCubic,
      top: isHovered ? 30 + mousePosition.dy : 0,
      left: isHovered ? 30 + mousePosition.dy : 30,
      height: isHovered ? 200 : 350,
      child: Container(
        width: 300,
        height: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image:
                AssetImage("assets/fest.jpg"), // Replace with your image asset
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void _updateHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }

  void _updateMousePosition(PointerEvent event) {
    setState(() {
      mousePosition = event.position;
    });
  }

  // bool ishover = false;
  // Offset mousPos = Offset(0, 0);
  // @override
  // Widget build(BuildContext context) {
  //   return MouseRegion(
  //     onEnter: (e) {
  //       setState(() {
  //         ishover = true;
  //       });
  //     },
  //     onHover: (e) {
  //       setState(() {
  //         mousPos += e.delta;
  //         mousPos *= 0.12;
  //       });
  //     },
  //     onExit: (e) {
  //       setState(() {
  //         ishover = false;
  //       });
  //     },
  //     child: Container(
  //       decoration: const BoxDecoration(
  //           gradient: LinearGradient(
  //         begin: Alignment.topCenter,
  //         end: Alignment.bottomCenter,
  //         colors: [
  //           Colors.grey,
  //           Colors.white,
  //         ],
  //       )),
  //       child: Stack(
  //         children: [backImage()],
  //       ),
  //     ),
  //   );
  // }

  // backImage() {
  //   return AnimatedPositioned(
  //     duration: Duration(milliseconds: 1000),
  //     curve: Curves.easeOutCubic,
  //     top: ishover ? -30 + mousPos.dy : 0,
  //     left: ishover ? -30 + mousPos.dy : -30,
  //     height: ishover ? 200 : 350,
  //     child: Container(
  //       width: 300,
  //       height: 190,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10),
  //         // border: Border.all(color: Colors.black, width: 5.0),
  //         image: const DecorationImage(
  //           image: AssetImage("assets/fest.jpg"),
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //     ),
  // child: Column(
  //   children: [
  //     SizedBox(
  //       height: 150,
  //     ),
  //     Row(
  //       children: [
  //         SizedBox(
  //           width: 180,
  //         ),
  //         Container(
  // width: 300,
  // height: 190,
  // decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(10),
  //   // border: Border.all(color: Colors.black, width: 5.0),
  //   image: const DecorationImage(
  //     image: AssetImage("assets/fest.jpg"),
  //     fit: BoxFit.cover,
  //   ),
  // ),
  //             child: const Center(
  //               child: Text(
  //                 "fest",
  //                 style: TextStyle(
  //                     color: Colors.black,
  //                     fontSize: 30,
  //                     fontWeight: FontWeight.w900),
  //               ),
  //             )),
  //         SizedBox(
  //           width: 120,
  //         ),
  //         Container(
  //           width: 300,
  //           height: 190,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(10),
  //             // border: Border.all(color: Colors.black, width: 5.0),
  //             image: const DecorationImage(
  //               image: AssetImage("assets/cric.jpg"),
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           width: 120,
  //         ),
  //         Container(
  //           width: 300,
  //           height: 190,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(10),
  //             // border: Border.all(color: Colors.black, width: 5.0),
  //             image: DecorationImage(
  //               image: AssetImage("assets/techfst.jpg"),
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           width: 70,
  //         ),
  //       ],
  //     ),
  //   ],
  // )
  // width: 300,
  // height: 190,
  // decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(10),
  //   // border: Border.all(color: Colors.black, width: 5.0),
  //   image: const DecorationImage(
  //     image: AssetImage("assets/cric.jpg"),
  //     fit: BoxFit.cover,
  //   ),
  // ),
  //   );
  // }
}
