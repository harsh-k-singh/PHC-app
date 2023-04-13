import "package:flutter/material.dart";
import 'package:phc_app/models/patientHistory.dart';

class HistoryWidget extends StatelessWidget {
  final PatientHistory patienthistory;

  const HistoryWidget({super.key, required this.patienthistory});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Attendent :${patienthistory.Attendant}"),
        subtitle: Text(
            "\n\nDate of Diagnosis : ${patienthistory.dod}\nDiagnosis : ${patienthistory.Diagnosis}\nPrescription : ${patienthistory.Prescription}"),
      ),
    );
  }
}
