import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:widgetpractice/constrainedbox.dart';
import 'package:widgetpractice/sizedbox.dart';

class ConstBox extends StatelessWidget {
  const ConstBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Constrain Box Practice'),
        centerTitle: true,
        backgroundColor: Colors.orange[700],
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 300,
          maxWidth: 400,
          minHeight: 150,
          maxHeight: 300,
        ),
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "I'm a constraint Box",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SizedBx()));
        },
        child: Center(
          child: Text('Next'),
        ),
        backgroundColor: Colors.orange[700],
      ),
    );
  }
}
