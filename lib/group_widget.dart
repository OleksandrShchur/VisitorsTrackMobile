import 'package:flutter/material.dart';
import 'package:helloworld/group_list_widget.dart';

class GroupTable extends StatefulWidget {
  @override
  _GroupTableState createState() => _GroupTableState();
}

class _GroupTableState extends State<GroupTable> {
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
        title: Text('Список групи'),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('LISTEN'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          GroupList(),
        ],
      ),
    );
  }
}
