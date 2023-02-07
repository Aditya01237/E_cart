import 'package:e_cart/Home_Page.dart';
import 'package:e_cart/utils/routes.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/loginpage.jpg",
              fit: BoxFit.cover,
              scale: .1,
              ),
              Text("Welcome",
                style: TextStyle(
                  fontSize:32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                      child: Text("Log In",style: TextStyle(fontSize: 17),),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  )
                ],),
              )
            ],
          ),
        )
      ),
    );
  }
}
