import 'package:flutter/material.dart';
import 'package:flutter_web/dashboard.dart';
import 'package:flutter_web/side_menu_controller.dart';
import 'package:flutter_web/widgets/responsive.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    final sideMenuController = Provider.of<SideMenuController>(context);

    return Scaffold(
      key: sideMenuController.scaffoldKey,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 1200) {
              // Desktop
              return const Dashboard();
            } else if (constraints.maxWidth > 600) {
              // Tablet
              return const Dashboard();
            } else {
              // Mobile
              return const Dashboard();
            }
          },
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_web/side_menu_controller.dart';
// import 'package:flutter_web/widgets/responsive.dart';
// import 'package:flutter_web/widgets/side_menu.dart';
// import 'package:provider/provider.dart';

// import 'dashboard.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     final sideMenuController = Provider.of<SideMenuController>(context);

//     return Scaffold(
//         key: sideMenuController.scaffoldKey,
//         // drawer: const SideMenu(),
//         body: SafeArea(
//           child: Row(
//             children: [
//               if (Responsive.isDesktop(context))
//                 // const Expanded(
                 
//                 // ),
//               const Expanded(flex: 5, child: Dashboard())
//             ],
//           ),
//         ));
//   }
// }
