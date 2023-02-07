import 'package:e_cart/Home_Page.dart';
import 'package:e_cart/login_page.dart';
import 'package:e_cart/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Loginpage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const Loginpage(),
      },
    );
  }
}
