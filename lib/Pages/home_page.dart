import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/drawer.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body:Center(
          child: Text("Welcome to vs code Flutter"),
      ) ,
      drawer:MyDrawer(),
    );
  }
}
