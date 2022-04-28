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
      new GroupMember('Бурак Денис Павлович', '401а', ''),
      new GroupMember('Бурденюк Ігор Олександрович', '401а', ''),
      new GroupMember('Буйновський Віктор Олексійович', '401а', ''),
      new GroupMember('Чебан Владислав Валерійович', '401б', ''),
      new GroupMember('Дем\'ян Анастасія Юріївна', '401а', ''),
      new GroupMember('Думітрюк Юрій Юрійович', '401а', ''),
      new GroupMember('Гаврилюк Микола Миколайович', '401б', ''),
      new GroupMember('Краснюкевич Владислав Олександрович', '401б', ''),
      new GroupMember('Мадей Андрій Олександрович', '401а', ''),
      new GroupMember('Мар\'янчук Олександра Олександрівна', '401а', ''),
      new GroupMember('Мельничук Станіслав Валерійович', '401а', ''),
      new GroupMember('Орелецький Валентин Віталійович', '401б', ''),
      new GroupMember('Роєк Анастасія Іванівна', '401б', ''),
      new GroupMember('Продан Анатолій Сергійович', '401б', ''),
      new GroupMember('Стрільчук Вадим Анатолійович', '401б', ''),
      new GroupMember('Тарица Олександр Петрович', '401б', ''),
      new GroupMember('Щур Олександр Іванович', '401б', ''),
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
