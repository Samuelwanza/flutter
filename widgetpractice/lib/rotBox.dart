import 'package:flutter/material.dart';
import 'package:widgetpractice/Icons.dart';

class RotatedBx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rotated Box Example"),
        centerTitle: true,
        backgroundColor: Colors.orange[700],
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: 1,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text("Rotated Box"),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Icns()));
        },
        child: Center(
          child: Text('Next'),
        ),
        backgroundColor: Colors.orange[700],
      ),
    );
  }
}
