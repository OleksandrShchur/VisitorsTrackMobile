import 'package:flutter/material.dart';
import 'package:helloworld/group_list_widget.dart';
import 'package:helloworld/models/group-member_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Daybook extends StatefulWidget {
  final String subjectName;
  final String date;

  Daybook({String subjectName, String date})
      : this.subjectName = subjectName,
        this.date = date;

  _DaybookState createState() => _DaybookState(subjectName, date);
}

class _DaybookState extends State<Daybook> {
  List<GroupMember> groupMembers;
  _DaybookState(this.subjectName, this.date);
  final String subjectName, date;

  @override
  void initState() {
    super.initState();

    groupMembers = [
      new GroupMember('Щур Олександр Іванович', '401б', ''),
      new GroupMember('Мадей Андрій Олександрович', '401а', ''),
      new GroupMember('Роєк Анастасія Іванівна', '401б', '')
    ];
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
            Card(
                child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              ListTile(
                leading: Icon(Icons.album),
                title: Text(this.subjectName),
                subtitle: Text(this.date),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    child: const Text('Відмітити присутніх'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('Внести зміни у заняття'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ])),
            Card(child: Container(child: SfCartesianChart())),
          ],
        ));
  }
}
