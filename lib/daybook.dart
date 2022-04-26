import 'package:flutter/material.dart';

class Daybook extends StatefulWidget {
  final String subjectName;
  final String date;

  Daybook({String subjectName, String date})
      : this.subjectName = subjectName,
        this.date = date;

  _DaybookState createState() => _DaybookState(subjectName, date);
}

class _DaybookState extends State<Daybook> {
  _DaybookState(this.subjectName, this.date);
  final String subjectName, date;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Журнал відвідуваності'),
        ),
        body: Column(
          children: [
            Text(this.subjectName),
            Text(this.date),
          ],
        ));
  }
}
