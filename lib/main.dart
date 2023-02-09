import 'package:e_cart/pages/Home_Page.dart';
import 'package:e_cart/pages/login_page.dart';
import 'package:e_cart/utils/routes.dart';
import 'package:e_cart/widgets/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Loginpage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => Loginpage(),
      },
    );
  }
}
