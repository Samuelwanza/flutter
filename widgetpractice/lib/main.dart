import 'package:flutter/material.dart';
import 'package:widgetpractice/container.dart';

int test() {
  print("Test button");
  return 0;
}

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Press Next to show practice  '),
          centerTitle: true,
          backgroundColor: Colors.orange[700],
        ),
        body: Center(
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cont()));
            },
            child: Center(
              child: Text('Next'),
            ),
            backgroundColor: Colors.orange[700],
          ),
        ));
  }
}
