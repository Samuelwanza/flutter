import 'package:flutter/material.dart';
import 'package:widgetpractice/main.dart';

// Implementing use of images
class Imgs extends StatelessWidget {
  //Setting up the scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
        centerTitle: true,
        backgroundColor: Colors.orange[700],
      ),
      body: Center(
        child: Image.network(
          'https://picsum.photos/200',
          height: 200,
          width: 200,
          fit: BoxFit.cover,
        ),
      ),
      //Redirecting to the next page
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyWidget()));
        },
        child: Center(
          child: Text('Home'),
        ),
        backgroundColor: Colors.orange[700],
      ),
    );
  }
}
