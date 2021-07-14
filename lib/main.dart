import "package:flutter/material.dart";
import 'package:flutter_app/Pages/home_page.dart';
import 'package:flutter_app/Pages/login_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.red
      ),
      initialRoute: "/home",
      routes: {
        "/":(context)=> LoginPage(),
        "/home":(context)=> HomePage(),
        "/login":(context)=> LoginPage()
      },
    );
  }
}

