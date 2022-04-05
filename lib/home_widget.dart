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
                leading: Icon(
                  Icons.verified_user_rounded,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Мій профіль',
                ),
                title: const Text('Мій профіль'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Розклад'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Корисна інформація'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Моя група'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Корисна інформація'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Повідомити про помилку'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Вийти'),
                onTap: () {
                  Navigator.pop(context);
                  AlertDialog alert = AlertDialog(
                    title: Text('Хочете вийти із застосунку?'),
                    content: Text('Для входу буде потрібна повторна авторизація.'),
                    actions: [
                      FlatButton(
                        textColor: Color(0xFF4D65FF),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Залишитися'),
                      ),
                      FlatButton(
                        textColor: Color(0xFFFF4D4D),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Вийти'),
                      ),
                    ],
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                },
              ),
            ],
          ),
        ));
  }
}
