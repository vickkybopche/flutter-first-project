import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader (
                margin: EdgeInsets.zero,
                accountEmail:Text("vickkybopche123@gmail.com"),
                accountName: Text("VICKKY BOPCHE"),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/Vickky.jpg"),),
                 )
            ),
            ListTile(
              
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
                ),
                title: Text("Home",style: TextStyle(color: Colors.white),),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                ),
                title: Text("Profile",style: TextStyle(color: Colors.white),),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
                ),
                title: Text("Email_me",style: TextStyle(color: Colors.white),),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.gear_alt_fill,
                color: Colors.white,
                ),
                title: Text("setting",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      )
      
    );
  }
}