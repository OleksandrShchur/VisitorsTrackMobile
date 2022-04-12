import 'package:flutter/material.dart';
import 'package:helloworld/login_widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
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
