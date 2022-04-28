import 'package:flutter/material.dart';
import 'package:helloworld/group_list_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';

class VisitingClassData {
  VisitingClassData(this.weekNumber, this.percentOfVisiting);

  final int weekNumber;
  final int percentOfVisiting;
}

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  TooltipBehavior _tooltipBehavior;
  Random random;

  @override
  void initState() {
    super.initState();

    this.random = new Random();
    _tooltipBehavior = TooltipBehavior(enable: true);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Профіль'),
        ),
        body: Column(children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: const Text('AH', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 40)),
                    minRadius: 80,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.account_box_outlined, size: 40),
                  title: Text("Name of student"),
                  subtitle: Text("Group of student"),
                ),
                ListTile(
                  leading: Icon(Icons.alternate_email_outlined, size: 40),
                  title: Text("Email of user"),
                ),
                Container(
                    child: SfCartesianChart(primaryXAxis: CategoryAxis(), title: ChartTitle(text: 'Аналіз відвідуваності занять'), legend: new Legend(isVisible: true, title: LegendTitle(text: 'Дані')), tooltipBehavior: _tooltipBehavior, series: <StackedArea100Series<VisitingClassData, String>>[
                  StackedArea100Series<VisitingClassData, String>(
                    dataSource: <VisitingClassData>[
                      VisitingClassData(1, random.nextInt(10) + 40),
                      VisitingClassData(2, random.nextInt(10) + 40),
                      VisitingClassData(3, random.nextInt(10) + 40),
                      VisitingClassData(4, random.nextInt(10) + 40),
                      VisitingClassData(5, random.nextInt(10) + 40),
                      VisitingClassData(6, random.nextInt(10) + 40),
                      VisitingClassData(7, random.nextInt(10) + 40),
                      VisitingClassData(8, random.nextInt(10) + 40),
                      VisitingClassData(9, random.nextInt(10) + 40),
                      VisitingClassData(10, random.nextInt(10) + 40),
                    ],
                    name: 'Пропуски',
                    xValueMapper: (VisitingClassData data, _) => data.weekNumber.toString(),
                    yValueMapper: (VisitingClassData data, _) => data.percentOfVisiting,
                    dataLabelSettings: DataLabelSettings(isVisible: false),
                  ),
                  StackedArea100Series<VisitingClassData, String>(
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
                    name: 'Лекційні заняття',
                    xValueMapper: (VisitingClassData data, _) => data.weekNumber.toString(),
                    yValueMapper: (VisitingClassData data, _) => data.percentOfVisiting,
                    dataLabelSettings: DataLabelSettings(isVisible: false),
                  ),
                  StackedArea100Series<VisitingClassData, String>(
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
                    name: 'Лабораторні заняття',
                    xValueMapper: (VisitingClassData data, _) => data.weekNumber.toString(),
                    yValueMapper: (VisitingClassData data, _) => data.percentOfVisiting,
                    dataLabelSettings: DataLabelSettings(isVisible: false),
                  ),
                  StackedArea100Series<VisitingClassData, String>(
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
                    name: 'Практичні заняття',
                    xValueMapper: (VisitingClassData data, _) => data.weekNumber.toString(),
                    yValueMapper: (VisitingClassData data, _) => data.percentOfVisiting,
                    dataLabelSettings: DataLabelSettings(isVisible: false),
                  ),
                ])),
              ],
            ),
          )
        ]));
  }
}
