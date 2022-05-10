import 'package:flutter/material.dart';
import 'package:helloworld/group_list_widget.dart';
import 'package:helloworld/models/group-member_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';

class Daybook extends StatefulWidget {
  final String subjectName;
  final String date;

  Daybook({String subjectName, String date})
      : this.subjectName = subjectName,
        this.date = date;

  _DaybookState createState() => _DaybookState(subjectName, date);
}

class _DaybookState extends State<Daybook> {
  TooltipBehavior _tooltipBehavior;
  List<GroupMember> groupMembers;
  _DaybookState(this.subjectName, this.date);
  final String subjectName, date;
  Random random;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
    this.random = new Random();

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
              ListTile(
                leading: Icon(Icons.supervised_user_circle_outlined),
                title: Text('Кількість студентів'),
                subtitle: Text('44'),
              ),
              ListTile(
                leading: Icon(Icons.access_time_rounded),
                title: Text('Час проведення'),
                subtitle: Text('Четвер, 9.50 - 11.10, щотижня'),
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
              Center(
                child: TextButton(
                  child: const Text('Змінити подію'),
                  onPressed: () {
                    /* ... */
                  },
                ),
              ),
            ])),
            Card(
                child: Container(
                    child: SfCartesianChart(primaryXAxis: CategoryAxis(), title: ChartTitle(text: 'Аналіз відвідуваності заняття'), legend: new Legend(isVisible: true, title: LegendTitle(text: 'Дані')), tooltipBehavior: _tooltipBehavior, series: <LineSeries<VisitingClassData, String>>[
              LineSeries<VisitingClassData, String>(
                dataSource: <VisitingClassData>[
                  VisitingClassData(1, random.nextInt(50) + 40),
                  VisitingClassData(2, random.nextInt(50) + 40),
                  VisitingClassData(3, random.nextInt(50) + 40),
                  VisitingClassData(4, random.nextInt(50) + 40),
                  VisitingClassData(5, random.nextInt(50) + 40),
                  VisitingClassData(6, random.nextInt(50) + 40),
                  VisitingClassData(7, random.nextInt(50) + 40),
                  VisitingClassData(8, random.nextInt(50) + 40),
                  VisitingClassData(9, random.nextInt(50) + 40),
                  VisitingClassData(10, random.nextInt(50) + 40),
                ],
                name: 'Весь потік',
                xValueMapper: (VisitingClassData data, _) => data.weekNumber.toString(),
                yValueMapper: (VisitingClassData data, _) => data.percentOfVisiting,
                dataLabelSettings: DataLabelSettings(isVisible: false),
              ),
              LineSeries<VisitingClassData, String>(
                dataSource: <VisitingClassData>[
                  VisitingClassData(1, random.nextInt(50) + 40),
                  VisitingClassData(2, random.nextInt(50) + 40),
                  VisitingClassData(3, random.nextInt(50) + 40),
                  VisitingClassData(4, random.nextInt(50) + 40),
                  VisitingClassData(5, random.nextInt(50) + 40),
                  VisitingClassData(6, random.nextInt(50) + 40),
                  VisitingClassData(7, random.nextInt(50) + 40),
                  VisitingClassData(8, random.nextInt(50) + 40),
                  VisitingClassData(9, random.nextInt(50) + 40),
                  VisitingClassData(10, random.nextInt(50) + 40),
                ],
                name: '401a',
                xValueMapper: (VisitingClassData data, _) => data.weekNumber.toString(),
                yValueMapper: (VisitingClassData data, _) => data.percentOfVisiting,
                dataLabelSettings: DataLabelSettings(isVisible: false),
              ),
              LineSeries<VisitingClassData, String>(
                dataSource: <VisitingClassData>[
                  VisitingClassData(1, random.nextInt(50) + 40),
                  VisitingClassData(2, random.nextInt(50) + 40),
                  VisitingClassData(3, random.nextInt(50) + 40),
                  VisitingClassData(4, random.nextInt(50) + 40),
                  VisitingClassData(5, random.nextInt(50) + 40),
                  VisitingClassData(6, random.nextInt(50) + 40),
                  VisitingClassData(7, random.nextInt(50) + 40),
                  VisitingClassData(8, random.nextInt(50) + 40),
                  VisitingClassData(9, random.nextInt(50) + 40),
                  VisitingClassData(10, random.nextInt(50) + 40),
                ],
                name: '401б',
                xValueMapper: (VisitingClassData data, _) => data.weekNumber.toString(),
                yValueMapper: (VisitingClassData data, _) => data.percentOfVisiting,
                dataLabelSettings: DataLabelSettings(isVisible: false),
              ),
              LineSeries<VisitingClassData, String>(
                dataSource: <VisitingClassData>[
                  VisitingClassData(1, random.nextInt(50) + 40),
                  VisitingClassData(2, random.nextInt(50) + 40),
                  VisitingClassData(3, random.nextInt(50) + 40),
                  VisitingClassData(4, random.nextInt(50) + 40),
                  VisitingClassData(5, random.nextInt(50) + 40),
                  VisitingClassData(6, random.nextInt(50) + 40),
                  VisitingClassData(7, random.nextInt(50) + 40),
                  VisitingClassData(8, random.nextInt(50) + 40),
                  VisitingClassData(9, random.nextInt(50) + 40),
                  VisitingClassData(10, random.nextInt(50) + 40),
                ],
                name: '401*',
                xValueMapper: (VisitingClassData data, _) => data.weekNumber.toString(),
                yValueMapper: (VisitingClassData data, _) => data.percentOfVisiting,
                dataLabelSettings: DataLabelSettings(isVisible: false),
              ),
              LineSeries<VisitingClassData, String>(
                dataSource: <VisitingClassData>[
                  VisitingClassData(1, random.nextInt(50) + 40),
                  VisitingClassData(2, random.nextInt(50) + 40),
                  VisitingClassData(3, random.nextInt(50) + 40),
                  VisitingClassData(4, random.nextInt(50) + 40),
                  VisitingClassData(5, random.nextInt(50) + 40),
                  VisitingClassData(6, random.nextInt(50) + 40),
                  VisitingClassData(7, random.nextInt(50) + 40),
                  VisitingClassData(8, random.nextInt(50) + 40),
                  VisitingClassData(9, random.nextInt(50) + 40),
                  VisitingClassData(10, random.nextInt(50) + 40),
                ],
                name: '402',
                xValueMapper: (VisitingClassData data, _) => data.weekNumber.toString(),
                yValueMapper: (VisitingClassData data, _) => data.percentOfVisiting,
                dataLabelSettings: DataLabelSettings(isVisible: false),
              )
            ]))),
          ],
        ));
  }
}

class VisitingClassData {
  VisitingClassData(this.weekNumber, this.percentOfVisiting);

  final int weekNumber;
  final int percentOfVisiting;
}
