import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text("E-Cart"),
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
