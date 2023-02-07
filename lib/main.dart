import 'package:e_cart/Home_Page.dart';
import 'package:e_cart/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      home: Loginpage(),
    );
  }
}
