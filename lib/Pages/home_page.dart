import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/drawer.dart';
import 'package:flutter_app/widgets/item_widget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    
    super.initState();
    loadData();
  }
  loadData() async{
    
     final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
    print(productsData);
    
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body:Padding
      (
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount:CatalogModel.items.length,
          itemBuilder: (context,index){
            return ItemWidget(item:CatalogModel.items[index],);
          },
        ),
      ),
      drawer:MyDrawer(),
    );
  }
}
