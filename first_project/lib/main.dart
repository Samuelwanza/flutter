import 'dart:js_util';

import 'package:first_project/topsales.dart';
import 'package:flutter/material.dart';
import 'package:first_project/image_bunner.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  title: const Text("Top Sales"),
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
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(30),
            // child: Text(
            //   "New collection with 15% discount",
            //   style: TextStyle(color: Colors.white, fontSize: 24),
            // ),
            child: Column(
              children: [
                Text("New collection with\t",
                    style: GoogleFonts.poppins(
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
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                ImageBanner("assets/images/fashion1.webp"),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: SizedBox(
                    height: 40,
                    width: 200,
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
                        "Shop Now",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 40,
                //   width: 200,
                //   child: FloatingActionButton(
                //     backgroundColor: Colors.lime,
                //     onPressed: (null),
                //     shape: RoundedRectangleBorder(
                //         borderRadius:
                //             BorderRadius.all(Radius.circular(100))),
                //     child: Text(
                //       "Shop Now",
                //       style: GoogleFonts.poppins(
                //           textStyle: const TextStyle(
                //               color: Colors.white,
                //               fontSize: 30,
                //               fontWeight: FontWeight.bold)),
                //     ),
                //   ),
                // )
              ],
            )),
      ),
    );
  }
}

class MyDear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textSelectionTheme:
                const TextSelectionThemeData(cursorColor: Colors.white)),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Fashion Store"),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          drawer: Drawer(
              child: ListView(
            children: <Widget>[
              ListTile(
                title: const Text("Top Sales"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const TopSales()));
                },
              )
            ],
          )),

          // ignore: prefer_const_constructors
          body: Container(
            color: Colors.blue,
            width: double.infinity,
            height: double.infinity,
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                color: Colors.black,
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(30),
                // child: Text(
                //   "New collection with 15% discount",
                //   style: TextStyle(color: Colors.white, fontSize: 24),
                // ),
                child: Column(
                  children: [
                    Text("New collection with\t",
                        style: GoogleFonts.poppins(
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
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    ImageBanner("assets/images/fashion1.webp"),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: SizedBox(
                        height: 40,
                        width: 200,
                        child: FloatingActionButton(
                          backgroundColor: Colors.lime,
                          onPressed: (null),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Text(
                            "Shop Now",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 40,
                    //   width: 200,
                    //   child: FloatingActionButton(
                    //     backgroundColor: Colors.lime,
                    //     onPressed: (null),
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(100))),
                    //     child: Text(
                    //       "Shop Now",
                    //       style: GoogleFonts.poppins(
                    //           textStyle: const TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 30,
                    //               fontWeight: FontWeight.bold)),
                    //     ),
                    //   ),
                    // )
                  ],
                )),
          ),
        ));
  }
}
