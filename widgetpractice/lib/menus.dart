import 'package:flutter/material.dart';
import 'package:widgetpractice/imgs.dart';

class Menus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Side Menu & Popup Menu Example'),
          centerTitle: true,
          backgroundColor: Colors.orange[700],
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: (value) {
                // Perform action based on value
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'Item 1',
                  child: Text('Item 1'),
                ),
                PopupMenuItem(
                  value: 'Item 2',
                  child: Text('Item 2'),
                ),
                PopupMenuItem(
                  value: 'Item 3',
                  child: Text('Item 3'),
                ),
              ],
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Side Menu'),
                decoration: BoxDecoration(
                  color: Colors.orange[700],
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Perform action for item 1
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Perform action for item 2
                },
              ),
              ListTile(
                title: Text('Item 3'),
                onTap: () {
                  // Perform action for item 3
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Main Content'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Imgs()));
          },
          child: Center(
            child: Text('Next'),
          ),
          backgroundColor: Colors.orange[700],
        ),
      ),
    );
  }
}
