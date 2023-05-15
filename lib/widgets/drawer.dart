import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl="https://mir-s3-cdn-cf.behance.net/project_modules/disp/3c9f4a40760693.578c9a4699778.gif";
    return Drawer(
      child: Container(
        color: Colors.cyanAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(padding: EdgeInsets.zero,margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(margin: EdgeInsets.zero,accountName: Text("Anmol Jain"),accountEmail: Text("anmolzan7@gmail.com"),currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),),)),
          ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.black),
            title: Text("Home",textScaleFactor: 1.4,style: TextStyle(color: Colors.black),),
          ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.pinkAccent),
              title: Text("Profile",textScaleFactor: 1.4,style: TextStyle(color: Colors.pinkAccent),),
            ),
          ],
        ),
      ),
    );
  }
}
