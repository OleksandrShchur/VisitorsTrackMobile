import 'package:flutter/material.dart';

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

class ListItemWidget extends State<SwipeList> {
  List items = getDummyList();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(items[index]),
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
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5)), image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://e7.pngegg.com/pngimages/1022/907/png-clipart-yellow-and-black-warning-sign-icon-warning-icons-angle-triangle.png"))),
                  ),
                  Container(
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            items[index],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                            child: Container(
                              width: 30,
                              decoration: BoxDecoration(border: Border.all(color: Colors.teal), borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "3D",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                            child: Container(
                              width: 260,
                              child: Text(
                                "His genius finally recognized by his idol Chester",
                                style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 48, 48, 54)),
                              ),
                            ),
                          )
                        ],
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

  static List getDummyList() {
    List list = List.generate(10, (i) {
      return "Item ${i + 1}";
    });
    return list;
  }
}
