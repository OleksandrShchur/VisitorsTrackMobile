import 'package:flutter/material.dart';
import 'package:helloworld/theme.dart';

class GroupList extends StatefulWidget {
  @override
  _GroupListState createState() => _GroupListState();
}

class _GroupListState extends State<GroupList> {
  List groupMembers;

  @override
  void initState() {
    super.initState();

    groupMembers = [
      'user1',
      'user2',
      'user3',
      'user4'
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(groupMembers[index]),
          subtitle: Text('subtitle'),
          leading: Icon(Icons.supervised_user_circle),
        );
      },
      itemCount: groupMembers.length,
    );
  }
}
