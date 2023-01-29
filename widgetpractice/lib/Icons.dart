import 'package:flutter/material.dart';
import 'package:widgetpractice/menus.dart';

class Icns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Practice'),
        centerTitle: true,
        backgroundColor: Colors.orange[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.star,
              size: 50,
              color: Colors.red,
            ),
            Icon(
              Icons.book,
              size: 70,
              color: Colors.blue,
            ),
            Icon(
              Icons.cake,
              size: 90,
              color: Colors.pink,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Menus()));
        },
        child: Center(
          child: Text('Next'),
        ),
        backgroundColor: Colors.orange[700],
      ),
    );
  }
}
