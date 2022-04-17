import 'package:flutter/material.dart';
import 'package:helloworld/models/notification_model.dart';

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Сповіщення"),
        ),
        body: Center(child: SwipeList()));
  }
}

class SwipeList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListItemWidget();
  }
}

class Notification {
  String title, shortDesc;
  String roles;

  Notification(this.title, this.shortDesc, this.roles);
}

class ListItemWidget extends State<SwipeList> {
  List<Notification> items;

  @override
  void initState() {
    super.initState();

    items = [
      new Notification("Вчена рада 15.04.2022", "Вчену раду факультету математики та інформатики буде проведено 15 квітня об 14.40.", "Вчена рада"),
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(items[index].title),
          background: Container(
            alignment: AlignmentDirectional.centerEnd,
            color: Colors.red,
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });
          },
          direction: DismissDirection.endToStart,
          child: Card(
            elevation: 5,
            child: Container(
              height: 100.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 70.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5)), image: DecorationImage(fit: BoxFit.contain, image: NetworkImage("https://images.assetsdelivery.com/compings_v2/sergt/sergt1606/sergt160600051.jpg"))),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              items[index].title,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                              child: Expanded(
                                child: Container(
                                  //width: 30,
                                  decoration: BoxDecoration(border: Border.all(color: Colors.teal), borderRadius: BorderRadius.all(Radius.circular(5))),
                                  child: Text(
                                    items[index].roles,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                              child: Container(
                                width: 260,
                                child: Text(
                                  items[index].shortDesc,
                                  style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 48, 48, 54)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
