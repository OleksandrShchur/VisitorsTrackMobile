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
              child: const Text('AH'),
              minRadius: 50,
            ))
          ])),
        ],
      ),
    );
  }
}
