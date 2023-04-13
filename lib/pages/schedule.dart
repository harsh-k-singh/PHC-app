import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Doctor's Timimg Each Day\n"),
            Table(
              border: TableBorder.all(color: Colors.black, width: 2),
              children: const [
                TableRow(children: [
                  Text(
                    " Day",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " Arrival",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " Departure",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    " Monday",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    " Tuesday",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    " Wednesday",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    " Thursday",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    " Friday",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    " Saturday",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
                TableRow(children: [
                  Text(
                    " Sunday",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    " 00:00",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
