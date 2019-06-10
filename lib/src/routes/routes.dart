import 'package:flutter/material.dart';

import 'package:practica2/src/pages/alert_page.dart';
import 'package:practica2/src/pages/avatar_page.dart';
import 'package:practica2/src/pages/card_page.dart';
import 'package:practica2/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (context) => HomePage(),
    'alert': (context) => AlertPage(),
    'avatar': (context) => AvatarPage(),
    'card': (context) => CardPage(),
  };
}

getApplicationOnGenerateRoute(RouteSettings setting) {
  print(setting.name);

  return MaterialPageRoute(
    builder: (context) => AlertPage(),
  );
}
