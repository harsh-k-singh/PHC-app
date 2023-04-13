import 'package:flutter/material.dart';
import 'package:phc_app/utils/routes.dart';
//import "package:flutter/cupertino.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Harsh Kumar"),
              accountEmail: Text("harsh@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar.png"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(Icons.medical_services_rounded),
            onTap: () => Navigator.pushNamed(context, MyRoutes.schedule),
            title: Text(
              "Schedule",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(Icons.question_mark_rounded),
            onTap: () => Navigator.pushNamed(context, MyRoutes.aboutus),
            title: Text(
              "About us",
              textScaleFactor: 1.2,
            ),
          )
        ],
      ),
    );
  }
}
