import 'package:flutter/material.dart';
import 'package:widgetpractice/fitBox.dart';
import 'constrainedbox.dart';

//Implementation of a sizedBox widget

class SizedBx extends StatelessWidget {
  const SizedBx({super.key});
  @override
  //Setting up the scaffold
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox Practice'),
        centerTitle: true,
        backgroundColor: Colors.orange[700],
      ),
      //Implementation of a Center widget which will have a row widget housing the SizedBox widget as container
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
      //Rediecting to the next screen
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FittedBx()));
        },
        child: Center(
          child: Text('Next'),
        ),
        backgroundColor: Colors.orange[700],
      ),
    );
  }
}
