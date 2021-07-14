import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login_Page",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.brown
        ),),
        ),
    );
  }
}