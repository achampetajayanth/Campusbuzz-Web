import 'package:flutter/material.dart';

import 'package:flutter_web/constants/controllers.dart';
import 'package:flutter_web/constants/helpers/reponsiveness.dart';
import 'package:flutter_web/constants/widgets/custom_text.dart';

//import 'package:flutter_web_dashboard/pages/hosting/widgets/hosting_small.dart';
//import 'package:flutter_web_dashboard/pages/hosting/widgets/hosting_table.dart';
//import 'package:flutter_web_dashboard/pages/hosting/widgets/drivers_table.dart';import 'package:flutter_web_dashboard/pages/hosting/widgets/hosting_table.dart';

import 'package:get/get.dart';

class HostingPage extends StatelessWidget {
  const HostingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: const [HostingPage()],
        )),
      ],
    );
  }
}
