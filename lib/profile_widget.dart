import 'package:flutter/material.dart';
import 'package:helloworld/group_list_widget.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
        title: Text('Профіль'),
      ),
      body: Column(
        children: [
          Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.brown.shade800,
                child: const Text('AH', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 40)),
                minRadius: 80,
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_box_outlined, size: 40),
              title: Text("Name of student"),
              subtitle: Text("Group of student"),
            ),
          ])),
        ],
      ),
    );
  }
}
