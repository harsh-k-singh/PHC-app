import 'package:flutter/material.dart';
import 'package:phc_app/models/patientHistory.dart';
import 'package:phc_app/widgets/history_widget.dart';
import 'package:phc_app/widgets/home_list.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IITDMJ Health Care"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: HistoryModel.history.length,
            itemBuilder: (context, index) {
              return HistoryWidget(patienthistory: HistoryModel.history[index]);
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
