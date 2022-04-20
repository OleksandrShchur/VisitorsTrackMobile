import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

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
        children: <Widget>[
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
          SfCalendar(
            view: CalendarView.month,
            initialSelectedDate: DateTime.now(),
            monthViewSettings: MonthViewSettings(showAgenda: true, navigationDirection: MonthNavigationDirection.vertical, numberOfWeeksInView: 2, dayFormat: 'EEE'),
            dataSource: MeetingDataSource(_getDataSource()),
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
  meetings.add(Meeting('Аналіз даних (лекція)', startTime, endTime, const Color(0xFF0F8644), false));
  meetings.add(Meeting('Аналіз даних (практика)', startTime2, endTime2, const Color(0xFF3272d1), false));
  meetings.add(Meeting('Іноземна мова', startTime3, endTime3, const Color(0xFF0F8644), false));
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

  @override
  bool isAllDay(int index) {
    return appointments[index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
