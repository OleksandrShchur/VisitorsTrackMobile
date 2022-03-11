import 'package:flutter/material.dart';
import 'package:helloworld/theme.dart';

import 'https://flutlab.io/root/app/lib/logout_widget.dart';

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
          title: Text('Головна'),
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
                  Navigator.pop(context);
                  LogoutWidget();
                },
              ),
            ],
          ),
        ));
  }
}
