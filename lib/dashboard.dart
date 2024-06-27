import 'package:flutter/material.dart';
import 'package:flutter_web/Dashboadrd/desktop%5B1%5D.dart';
import 'package:flutter_web/Dashboadrd/mobile%5B1%5D.dart';
import 'package:flutter_web/Dashboadrd/tablet%5B1%5D.dart';
import 'package:flutter_web/widgets/responsive.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: DesktopDashboard(),
      mobile: MobileDashboard(),
      tablet: TabletDashboard(),
    );
  }
}
