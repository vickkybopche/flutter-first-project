import "package:flutter/material.dart";
import 'package:flutter_app/home_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String F = "1st";
    return MaterialApp(

      home:HomePage(),
    );
  }
}

