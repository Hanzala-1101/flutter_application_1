import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/wedges/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme.themeData,
      initialRoute: MyRoutes.LoginRoutes,
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.HomeRoutes: (context) => HomePage(),
        MyRoutes.LoginRoutes: (context) => Loginpage(),
      },
    );
  }
}
