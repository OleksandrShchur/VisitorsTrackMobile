import 'package:flutter/material.dart';
import 'package:helloworld/theme.dart';

class GroupList extends StatefulWidget {
  @override
  _GroupListState createState() => _GroupListState();
}

class _GroupListState extends State<GroupList> {
  List groupMembers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item $index'),
          subtitle: Text('subtitle'),
          leading: Icon(Icons.supervised_user_circle),
        );
      },
      itemCount: 20,
    );
  }
}
