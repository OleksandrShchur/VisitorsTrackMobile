import 'package:flutter/material.dart';

class Daybook extends StatefulWidget {
  @override
  _DaybookState createState() => _DaybookState();
}

class _DaybookState extends State<Daybook> {
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
    );
  }
}
