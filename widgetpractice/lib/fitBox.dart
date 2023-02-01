import 'package:flutter/material.dart';
import 'package:widgetpractice/rotBox.dart';
// Implementation of a fitBox

class FittedBx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Setting up the scaffold
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox Example"),
        centerTitle: true,
        backgroundColor: Colors.orange[700],
      ),
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.red,
          ),
        ),
      ),

      //Redirecting to the next screen
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RotatedBx()));
        },
        child: Center(
          child: Text('Next'),
        ),
        backgroundColor: Colors.orange[700],
      ),
    );
  }
}
