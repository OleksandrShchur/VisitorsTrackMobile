import 'package:flutter/material.dart';
import 'package:helloworld/theme.dart';
import 'package:helloworld/table_calendar.dart';

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
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue, image: DecorationImage(image: NetworkImage('https://i2.wp.com/vidviday.ua/blog/wp-content/uploads/2016/01/Attachment-1-23.jpeg?fit=1200%2C408&ssl=1'), fit: BoxFit.cover)),
            //child: Text('Меню'),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle_rounded,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Мій профіль',
            ),
            title: const Text('Мій профіль'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.schedule_rounded,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Розклад',
            ),
            title: const Text('Розклад'),
            onTap: () {
              //Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleTable()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_rounded,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Корисна інформація',
            ),
            title: const Text('Корисна інформація'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.supervised_user_circle_rounded,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Моя група',
            ),
            title: const Text('Моя група'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.wifi_protected_setup_rounded,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Безпека',
            ),
            title: const Text('Безпека'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.warning_sharp,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Повідомити про помилку',
            ),
            title: const Text('Повідомити про помилку'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app_rounded,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Мій профіль',
            ),
            title: const Text('Вийти'),
            onTap: () {
              AlertDialog alert = AlertDialog(
                title: Text('Хочете вийти із застосунку?'),
                content: Text('Для входу буде потрібна повторна авторизація.'),
                actions: [
                  FlatButton(
                    textColor: Color(0xFF4D65FF),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Залишитися'),
                  ),
                  FlatButton(
                    textColor: Color(0xFFFF4D4D),
                    onPressed: () {
                      Navigator.of(context).pop();
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
    );
  }
}
