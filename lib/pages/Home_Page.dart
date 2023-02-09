import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("E-Cart",),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 30 days of code"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
