import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:widgetpractice/constrainedbox.dart';

//Implementation of a Container

class Cont extends StatelessWidget {
  const Cont({super.key});

  @override
  Widget build(BuildContext context) {
    //Setting up the scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Practice'),
        centerTitle: true,
        backgroundColor: Colors.orange[700],
      ),
      body: Container(
        margin: EdgeInsets.all(60),
        padding: EdgeInsets.all(40),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "I have margins",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      //Redirecting to the next screen
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ConstBox()));
        },
        child: Center(
          child: Text('Next'),
        ),
        backgroundColor: Colors.orange[700],
      ),
    );
  }
}
