import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/register_page.dart';
//import 'package:e_commerce/widgets/custom_btn.dart';
import 'package:e_commerce/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 24.0,
                ),
                child: Text(
                  "Welcome User,\nLogin to your account",
                  textAlign: TextAlign.center,
                  style: Constants.boldHeading,
                ),
              ),
              Column(
                children: [
                  CustomInput(
                    hintText: "Email...",
                  ),
                  CustomInput(
                    hintText: "Password...",
                  ),
                  // CustomBtn(
                  //   text: "Login",
                  //   onPressed: () {
                  //     print("Clicked The Login Button");
                  //   }, outlineBtn: true,
                  // )
                ],
              ),
               Container(  
              margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('LogIn', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () {
                  print("Clicked The Login Button");
                },  
              ),  
            ), 
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 16.0,
                ),
                child: FlatButton(
                  child: Text('Create New Account', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white, 
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage()
                      ),
                    );
                  },
                  //outlineBtn: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}