import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent ,
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body:Center(
          child: Text("Hello World"),
      ) ,
      drawer: Drawer(),
    );
  }
}
