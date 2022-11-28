import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:new_screens/router/app_route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRouters.routes,
      initialRoute: AppRouters.stackScreen.destination,
    );
  }
}
