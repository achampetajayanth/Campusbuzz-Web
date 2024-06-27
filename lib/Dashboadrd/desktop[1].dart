import 'package:flutter/material.dart';
import 'package:flutter_web/FOORM/webform.dart';

import 'package:flutter_web/landingpage/landingpage.dart';
import 'package:flutter_web/loginpg/loginpg.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/a1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.1),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.05),
                    child: Row(
                      children: [
                        Text(
                          "CAMPUSS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: constraints.maxWidth * 0.04,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "BUZZ",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: constraints.maxWidth * 0.04,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FormScreen1(),
                                ));
                          },
                          child: Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: constraints.maxWidth * 0.02,
                            ),
                          ),
                        ),
                        SizedBox(width: constraints.maxWidth * 0.02),
                        Text(
                          "About",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: constraints.maxWidth * 0.02,
                          ),
                        ),
                        SizedBox(width: constraints.maxWidth * 0.02),
                        Text(
                          "Services",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: constraints.maxWidth * 0.02,
                          ),
                        ),
                        SizedBox(width: constraints.maxWidth * 0.02),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPg()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  constraints.maxWidth * 0.015),
                              color: Colors.white,
                            ),
                            width: constraints.maxWidth * 0.1,
                            height: constraints.maxHeight * 0.09,
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: constraints.maxWidth * 0.02,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: constraints.maxWidth * 0.32,
                        top: constraints.maxHeight * 0.35),
                    child: Text(
                      "Welcome to CAMPUSBUZZ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth * 0.03,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => lpage()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(constraints.maxWidth * 0.01),
                      color: Colors.red,
                    ),
                    width: constraints.maxWidth * 0.25,
                    height: constraints.maxHeight * 0.07,
                    child: Center(
                      child: Text(
                        "Host Event",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: constraints.maxWidth * 0.015,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_web/landingpage/landingpage.dart';
// import 'package:flutter_web/signin.dart/Signin.dart';

// class DesktopDashboard extends StatelessWidget {
//   const DesktopDashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage("assets/a1.jpg"),
//               fit: BoxFit.cover,
//             )),
//           ),
          // Column(
          //   children: [
          //     const SizedBox(
          //       height: 80,
          //     ),
          //     Container(
          //       child: Row(
          //         children: [
          //           const SizedBox(
          //             width: 80,
          //           ),
          //           const Text(
          //             "CAMPUSS",
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 40,
          //               fontWeight: FontWeight.w900,
          //             ),
          //           ),
          //           const Text(
          //             "BUZZ",
          //             style: TextStyle(
          //               color: Colors.red,
          //               fontSize: 40,
          //               fontWeight: FontWeight.w900,
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 450,
          //           ),
          //           const Text(
          //             "Home",
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 25,
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 50,
          //           ),
          //           const Text(
          //             "About",
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 25,
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 50,
          //           ),
          //           const Text(
          //             "Services",
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 25,
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 50,
          //           ),
          //           InkWell(
          //             onTap: () {
          //               Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                       builder: (context) => LoginPage()));
          //             },
          //             child: Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(11),
          //                   color: Colors.white,
          //                 ),
          //                 width: 105,
          //                 height: 49,
          //                 child: const Center(
          //                   child: Text(
          //                     "Sign In",
          //                     style: TextStyle(
          //                         color: Colors.black,
          //                         fontSize: 25,
          //                         fontWeight: FontWeight.w900),
          //                   ),
          //                 )),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
//           const Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 450, top: 220),
//                 child: Text(
//                   "Welcome to CAMPUSBUZZ",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 40,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Center(
//             child: InkWell(
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => lpage()));
//               },
//               child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5.5),
//                     color: Colors.red,
//                   ),
//                   width: 300,
//                   height: 40,
//                   child: const Center(
//                     child: Text(
//                       "Host Event",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   )),
//             ),
//           ),
          // Row(
          //   children: [
          //     Align(
          //       alignment: Alignment.bottomCenter,
          //       child: Container(
          //         padding: const EdgeInsets.only(left: 500, top: 500),
          //         decoration: const BoxDecoration(color: Colors.white),
          //         width: 30,
          //         height: 30,
          //       ),
          //     )
          //   ],
          // ),
//         ],
//       ),
//     );
//   }
// }
