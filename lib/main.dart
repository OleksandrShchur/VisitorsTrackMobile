import 'package:flutter/material.dart';
import 'package:helloworld/login_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Visitors Tracker',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginWidget(),
    );
  }
}
