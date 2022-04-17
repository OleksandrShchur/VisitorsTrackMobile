import 'package:flutter/material.dart';
import 'package:helloworld/group_list_widget.dart';

class GroupTable extends StatefulWidget {
  @override
  _GroupTableState createState() => _GroupTableState();
}

class _GroupTableState extends State<GroupTable> {
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
        title: Text('Список групи'),
      ),
      body: Column(
        children: [
          GroupList(),
        ],
      ),
    );
  }
}
