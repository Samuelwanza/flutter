import 'dart:js_util';

import 'package:first_project/topsales.dart';
import 'package:flutter/material.dart';
import 'package:first_project/image_bunner.dart';
import 'package:google_fonts/google_fonts.dart';

// defining the main application
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

// the homepageState class
class _myHomePageState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fashion Store"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        constraints: const BoxConstraints(maxHeight: 400),
        child: Drawer(
            backgroundColor: Colors.lime,
            child: ListView(
              children: <Widget>[
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  accountName: Text("Beauty Queen"),
                  accountEmail: Text("Queen@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        NetworkImage("assets/images/fashion5.webp"),
                  ),
                ),
                ListTile(
                  title: const Text("Top Sales"), //the widget top sales
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TopSales()));
                  },
                )
              ],
            )),
      ),
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            color: Colors.black,
            width: 50, // defining the width
            height: 50, // defining the height
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Text("New collection with\t",
                    style: GoogleFonts.poppins( //defining the textsyle, color and fontsize
                        textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ))),
                Text(
                  "15%\t",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.lime,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  "discount",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white, // color
                          fontSize: 30, //fontsize
                          fontWeight: FontWeight.bold)),
                ),
                ImageBanner("assets/images/fashion1.webp"),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: SizedBox(
                    height: 40, // defining the height
                    width: 200, // defining the width
                    child: FloatingActionButton(
                      backgroundColor: Colors.lime,
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const TopSales()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Text(
                        "Shop Now", // the shop now widget
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle( // styling the text
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
