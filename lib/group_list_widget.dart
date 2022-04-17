import 'package:flutter/material.dart';
import 'package:helloworld/theme.dart';
import 'package:helloworld/models/group-member_model.dart';

class GroupList extends StatefulWidget {
  @override
  _GroupListState createState() => _GroupListState();
}

class _GroupListState extends State<GroupList> {
  List<GroupMember> groupMembers;

  @override
  void initState() {
    super.initState();

    groupMembers = [
      new GroupMember('Щур Олександр Іванович', '401б', ''),
      new GroupMember('Мадей Андрій Олександрович', '401а', ''),
      new GroupMember('Роєк Анастасія Іванівна', '401б', '')
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
          subtitle: Text(groupMembers[index].group),
          leading: Icon(Icons.account_circle_rounded, size: 48),
        );
      },
      itemCount: groupMembers.length,
    );
  }
}
