import 'package:flutter/material.dart';
import 'package:helloworld/theme.dart';
import 'package:helloworld/models/group-member-model.dart';

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
      User('Щур Олександр Іванович', '401б', ''),
      User('Мадей Андрій Олександрович', '401а', ''),
      User('Роєк Анастасія Іванівна', '401б', '')
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
          title: Text(groupMembers[index].fullname),
          subtitle: Text(groupMember[index].group),
          leading: Icon(Icons.supervised_user_circle),
        );
      },
      itemCount: groupMembers.length,
    );
  }
}