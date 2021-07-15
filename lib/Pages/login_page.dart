import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
     child: SingleChildScrollView(
        child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
             SizedBox(
              height: 20,
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 80),
            child: Column(children: [
              TextFormField(
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "Username"
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password"
              ),
            ),
             SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: Text("Login"),
              style: TextButton.styleFrom(
                minimumSize: Size(150, 40)
              ), 
               )
            ],),
            ),
          
        ],
      ), 
     ),
    );
  }
}