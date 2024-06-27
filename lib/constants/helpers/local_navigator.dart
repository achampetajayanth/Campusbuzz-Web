import 'package:flutter/cupertino.dart';

import 'package:flutter_web/constants/controllers.dart';
import 'package:flutter_web/constants/routing/router.dart';
import 'package:flutter_web/constants/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );
