import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

class HomeListWidgit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text("Your History"),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.medical_services),
            title: Text("Track Your abulance"),
          ),
        ),
      ],
    );
  }
}
