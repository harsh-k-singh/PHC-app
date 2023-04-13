class HistoryModel {
  static final history = [
    PatientHistory(
      Diagnosis: "Cancer",
      Prescription: "XYZ anti-cancer killing med",
      dod: "12-July-2023",
      Attendant: 'compunder1',
    )
  ];
}

class PatientHistory {
  final String Attendant;
  final String Diagnosis;
  final String Prescription;
  final String dod;

  // ignore: non_constant_identifier_names
  PatientHistory(
      {required this.Attendant,
      required this.Diagnosis,
      required this.Prescription,
      required this.dod});
}
