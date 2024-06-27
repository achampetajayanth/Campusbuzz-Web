// import 'package:flutter/material.dart';

// class LPage extends StatelessWidget {
//   const LPage({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: const BoxDecoration(
//             color: Colors.redAccent,
//             // gradient: LinearGradient(
//             //   begin: Alignment.topCenter,
//             //   end: Alignment.bottomCenter,
//             //   colors: [Colors.deepOrange, Colors.white],
//             // ),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width * 0.36,
//                   top: MediaQuery.of(context).size.height * 0.05,
//                 ),
//                 child: Text(
//                   "Select Category",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: MediaQuery.of(context).size.width * 0.04,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 40),
//               buildCategoryRow(
//                 context,
//                 image1: "assets/fest.jpg",
//                 label1: "Fest",
//                 image2: "assets/cric.jpg",
//                 label2: "Sports",
//                 image3: "assets/techfst.jpg",
//                 label3: "Tech-Fest",
//               ),
//               const SizedBox(height: 45),
//               buildCategoryRow(
//                 context,
//                 image1: "assets/culfst.jpg",
//                 label1: "Cultural-Fest",
//                 image2: "assets/semi.jpg",
//                 label2: "Seminar",
//                 image3: "assets/hack.jpg",
//                 label3: "Hackathons",
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCategoryRow(
//     BuildContext context, {
//     required String image1,
//     required String label1,
//     required String image2,
//     required String label2,
//     required String image3,
//     required String label3,
//   }) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         buildCategoryItem(context, image1, label1),
//         buildCategoryItem(context, image2, label2),
//         buildCategoryItem(context, image3, label3),
//       ],
//     );
//   }

//   Widget buildCategoryItem(
//     BuildContext context,
//     String image,
//     String label,
//   ) {
//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       child: Column(
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width * 0.25,
//             height: MediaQuery.of(context).size.height * 0.3,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               image: DecorationImage(
//                 image: AssetImage(image),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Container(
//               color: Colors.black.withOpacity(0.2),
//               child: Center(
//                 child: Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: MediaQuery.of(context).size.width * 0.023,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class lpage extends StatelessWidget {
  const lpage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            decoration: const BoxDecoration(color: Colors.redAccent
                // gradient: LinearGradient(
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                //   colors: [Colors.deepOrange, Colors.white],
                // ),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.36,
                    top: constraints.maxHeight * 0.05,
                  ),
                  child: Text(
                    "Select Category",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: constraints.maxWidth * 0.04,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                buildCategoryRow(
                  constraints,
                  image1: "assets/fest.jpg",
                  label1: "Fest",
                  image2: "assets/cric.jpg",
                  label2: "Sports",
                  image3: "assets/techfst.jpg",
                  label3: "Tech-Fest",
                ),
                const SizedBox(height: 40),
                buildCategoryRow(
                  constraints,
                  image1: "assets/culfst.jpg",
                  label1: "Cultural-Fest",
                  image2: "assets/semi.jpg",
                  label2: "Seminar",
                  image3: "assets/hack.jpg",
                  label3: "Hackathons",
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildCategoryRow(
    BoxConstraints constraints, {
    required String image1,
    required String label1,
    required String image2,
    required String label2,
    required String image3,
    required String label3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildCategoryItem(constraints, image1, label1),
        buildCategoryItem(constraints, image2, label2),
        buildCategoryItem(constraints, image3, label3),
      ],
    );
  }

  Widget buildCategoryItem(
    BoxConstraints constraints,
    String image,
    String label,
  ) {
    return Container(
      width: constraints.maxWidth * 0.265,
      height: constraints.maxHeight * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: constraints.maxWidth * 0.04,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_web/signin.dart/Signin.dart';

// class lpage extends StatelessWidget {
//   const lpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.pinkAccent,
//             Colors.white,
//           ],
//         )),
//         // backgroundColor: Color.fromARGB(255, 147, 134, 134),
//         child: Stack(
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(left: 540, top: 50),
//               child: Text(
//                 "Select Category",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 50,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//             Column(children: [
//               SizedBox(
//                 height: 150,
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: 120,
//                   ),
//                   Container(
//                     width: 300,
//                     height: 190,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       // border: Border.all(color: Colors.black, width: 5.0),
//                       image: const DecorationImage(
//                         image: AssetImage("assets/fest.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
                    
//                   ),
//                   SizedBox(
//                     width: 120,
//                   ),
//                   Container(
//                     width: 300,
//                     height: 190,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       // border: Border.all(color: Colors.black, width: 5.0),
//                       image: const DecorationImage(
//                         image: AssetImage("assets/cric.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 120,
//                   ),
//                   Container(
//                     width: 300,
//                     height: 190,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       // border: Border.all(color: Colors.black, width: 5.0),
//                       image: DecorationImage(
//                         image: AssetImage("assets/techfst.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 70,
//                   ),
//                 ],
//               ),
//             ]),
//             const Column(
//               children: [
//                 SizedBox(
//                   height: 350,
//                 ),
//                 Row(children: [
//                   SizedBox(
//                     width: 230,
//                   ),
//                   Text(
//                     "Fest",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     width: 400,
//                   ),
//                   Text(
//                     "Sports",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     width: 370,
//                   ),
//                   Text(
//                     "Tech-Fest",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ])
//               ],
//             ),
//             Column(children: [
//               SizedBox(
//                 height: 400,
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: 120,
//                   ),
//                   Container(
//                       width: 300,
//                       height: 190,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         // border: Border.all(color: Colors.black, width: 5.0),
//                         image: DecorationImage(
//                           image: AssetImage("assets/culfst.jpg"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 30,
//                               fontWeight: FontWeight.w900),
//                         ),
//                       )),
//                   SizedBox(
//                     width: 120,
//                   ),
//                   Container(
//                     width: 300,
//                     height: 190,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       // border: Border.all(color: Colors.black, width: 5.0),
//                       image: DecorationImage(
//                         image: AssetImage("assets/semi.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 120,
//                   ),
//                   Container(
//                     width: 300,
//                     height: 190,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       // border: Border.all(color: Colors.black, width: 5.0),
//                       image: DecorationImage(
//                         image: AssetImage("assets/hack.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 70,
//                   ),
//                 ],
//               ),
//             ]),
//             const Column(
//               children: [
//                 SizedBox(
//                   height: 600,
//                 ),
//                 Row(children: [
//                   SizedBox(
//                     width: 201,
//                   ),
//                   Text(
//                     "Cultural-Fest",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     width: 380,
//                   ),
//                   Text(
//                     "Seminar",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     width: 340,
//                   ),
//                   Text(
//                     "Hackathons",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ])
//               ],
//             ),
//           ],
//         ));
//   }
// }
