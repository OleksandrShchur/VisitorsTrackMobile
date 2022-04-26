import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:helloworld/daybook.dart';

class ScheduleTable extends StatefulWidget {
  @override
  _ScheduleTableState createState() => _ScheduleTableState();
}

class _ScheduleTableState extends State<ScheduleTable> {
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay;
  DateTime _rangeStart;
  DateTime _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
  }

  @override
  void dispose() {
    //_selectedEvents.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Розклад'),
      ),
      body: Column(
        children: [
          // TableCalendar(
          //   firstDay: DateTime.utc(2010, 10, 16),
          //   lastDay: DateTime.utc(2030, 3, 14),
          //   focusedDay: DateTime.now(),
          //   selectedDayPredicate: (day) {
          //     return isSameDay(_selectedDay, day);
          //   },
          //   onDaySelected: (selectedDay, focusedDay) {
          //     setState(() {
          //       _selectedDay = selectedDay;
          //       _focusedDay = focusedDay; // update `_focusedDay` here as well
          //     });
          //   },
          //   onPageChanged: (focusedDay) {
          //     _focusedDay = focusedDay;
          //   },
          //   locale: 'uk_UK',
          // ),
          Expanded(
            child: SfCalendar(
              view: CalendarView.month,
              initialSelectedDate: DateTime.now(),
              monthViewSettings: MonthViewSettings(showAgenda: true, navigationDirection: MonthNavigationDirection.vertical, dayFormat: 'EEE'),
              dataSource: MeetingDataSource(_getDataSource()),
              onTap: (CalendarTapDetails detail) {
                final Meeting target = detail.appointments[0];
                final String dateText = DateFormat('MMMM dd, yyyy').format(target.from);
                final String timeClass = DateFormat('hh:mm - ').format(target.from) + DateFormat('hh:mm').format(target.to);
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Container(
                          child: new Text(target.eventName),
                        ),
                        content: Container(
                          height: 180,
                          width: 220,
                          child: Column(children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.calendar_month_rounded,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                Text(
                                  dateText,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.access_time,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                Text(
                                  '  ' + timeClass,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(''),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.place_outlined,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                Text(
                                  '  Аудиторія: ' + target.audit,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              height: 5,
                              thickness: 1,
                              indent: 0,
                              endIndent: 20,
                              color: Colors.black,
                            ),
                            Row(
                              children: <Widget>[
                                TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 18, color: Colors.blue),
                                  ),
                                  onPressed: () async {
                                    if (await canLaunch(target.urlMeeting))
                                      await launch(target.urlMeeting);
                                    else
                                      // can't launch url, there is some error
                                      throw "Could not launch $target.urlMeeting";
                                  },
                                  child: const Text('Посилання на заняття'),
                                ),
                                const SizedBox(height: 24),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.place_outlined,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                Expanded(
                                  child: Text(
                                    '  Групи: ' +
                                        target.groups
                                            .map((e) => {
                                                  e.toString()
                                                })
                                            .toString()
                                            .replaceAll(RegExp(r"[^\s\w]"), ''),
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        ),
                        actions: [
                          new FlatButton(
                            textColor: Color(0xFF4257f5),
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Daybook(subjectName: target.eventName, date: dateText)));
                            },
                            child: Text('Переглянути журнал'),
                          ),
                          new FlatButton(
                            textColor: Color(0xFFFF4D4D),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Закрити'),
                          )
                        ],
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day, 9, 50, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 1, minutes: 20));
  final DateTime startTime2 = DateTime(today.year, today.month, today.day, 11, 30, 0);
  final DateTime endTime2 = startTime2.add(const Duration(hours: 1, minutes: 20));
  final DateTime startTime3 = DateTime(today.year, today.month, today.day, 13, 00, 0);
  final DateTime endTime3 = startTime3.add(const Duration(hours: 1, minutes: 20));
  meetings.add(Meeting('Аналіз даних (лекція)', startTime, endTime, const Color(0xFF0F8644), "https://meet.google.com/pkt-eade-bpm", '39', [
    '401a',
    '401б',
    '402',
    '401*',
    '402'
  ]));
  meetings.add(Meeting('Аналіз даних (практика)', startTime2, endTime2, const Color(0xFF3272d1), "https://meet.google.com/pkt-eade-bpm", '3', [
    '401a',
    '401б',
    '401*'
  ]));
  meetings.add(Meeting('Іноземна мова', startTime3, endTime3, const Color(0xFFa87e2f), "https://meet.google.com/pkt-eade-bpm", '11', [
    '401a',
    '401б'
  ]));
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments[index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments[index].to;
  }

  @override
  String getSubject(int index) {
    return appointments[index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments[index].background;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.urlMeeting, this.audit, this.groups);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  String urlMeeting;
  String audit;
  List<String> groups;
}
