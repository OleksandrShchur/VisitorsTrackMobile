import 'package:flutter/material.dart';
import 'package:helloworld/login_widget.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

void main() => initializeDateFormatting().then((_) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        const Locale('uk'),
      ],
      locale: const Locale('uk'),
      debugShowCheckedModeBanner: false,
      title: 'Visitors Tracker Mobile',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginWidget(),
    );
  }
}
