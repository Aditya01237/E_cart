import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              ElevatedButton(
                  child: Text("Log In"),
                style: TextButton.styleFrom(),
                onPressed: (){
                  print("login clicking");
                },
              )
            ],),
          )
        ],
      )
    );
  }
}
