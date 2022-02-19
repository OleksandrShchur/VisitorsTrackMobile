import 'package:flutter/material.dart';
import 'package:helloworld/theme.dart';

class HomeWidget extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Меню 1"),
              trailing: Icon(Icons.arrow_back),
            ),
            ListTile(
                title: Text("Меню 2"),
                trailing: Icon(Icons.arrow_downward),
                onTap: () => AlertDialog(
                      title: Text('Reset settings?'),
                      content: Text('This will reset your device to its default factory settings.'),
                      actions: [
                        FlatButton(
                          textColor: Color(0xFF6200EE),
                          onPressed: () {},
                          child: Text('CANCEL'),
                        ),
                        FlatButton(
                          textColor: Color(0xFF6200EE),
                          onPressed: () {},
                          child: Text('ACCEPT'),
                        ),
                      ],
                    )),
          ],
        ),
      ),
    );
  }
}
