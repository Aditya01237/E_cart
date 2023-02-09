import 'package:e_cart/utils/routes.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context)
  {
      if(_formkey.currentState!.validate()){
        Navigator.pushNamed(context, MyRoutes.homeRoute);
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset("assets/images/loginpage.jpg",
                fit: BoxFit.cover,
                scale: .1,
                ),
                Text("Welcome Back",
                  style: TextStyle(
                    fontSize:32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 32.0),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value)
                      {
                        if(value == null || value.isEmpty){
                          return "User Name Cannot Be Empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value)
                      {
                        if(value == null || value.isEmpty){
                          return "Password Cannot Be Empty";
                        }
                        else if(value.length < 6){
                          return "Password Length Should Be Atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: Container(
                          height: 50,
                          width: 150,
                          alignment: Alignment.center,
                          child: Text(
                            "LogIn",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
