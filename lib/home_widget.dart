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
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Меню'),
              ),
              ListTile(
                title: const Text('Мій профіль'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Вийти'),
                onTap: () {
                  AlertDialog(
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
                  );
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
