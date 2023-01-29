import 'package:first_project/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_project/imageCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//This is the Top Sales screen.
//It highlights the products that have been sold the most

//We first define a stateful widget
//Stateful Widget:
//Stateful Widgets are dynamic widgets.
//They can be updated during runtime based on user action or data change.
//Stateful Widgets have an internal state and can re-render if the input data changes or if Widget’s state changes.

class TopSales extends StatefulWidget {
  const TopSales({super.key});

  @override
  TopSalesState createState() => TopSalesState();
}

class TopSalesState extends State<TopSales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Top Sales",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            const Icon(
              FontAwesomeIcons.lock,
              size: 23,
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 30,
                child: FloatingActionButton(
                  backgroundColor: Colors.lime,
                  onPressed: null,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          FontAwesomeIcons.filter,
                          size: 15,
                        ),
                        Text("Sort By")
                      ]),
                ),
              ),
              ElevatedButton(
                  onPressed: (null),
                  child: Text("Shoes",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)))),
              ElevatedButton(
                  onPressed: (null),
                  child: Text("FW2021",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)))),
              ElevatedButton(
                  onPressed: (null),
                  child: Text("New",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold))))
            ],
          ),
          //Displaying the top sales in gridview widget
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            padding: EdgeInsets.all(10),
            shrinkWrap: true,
            children: const [
              ImageCard("assets/images/fashion2.webp"),
              ImageCard("assets/images/fashion3.jpg"),
              ImageCard("assets/images/fashion4.jpg"),
              ImageCard("assets/images/fashion5.webp"),
              ImageCard("assets/images/fashion2.webp"),
              ImageCard("assets/images/fashion3.jpg"),
            ],
          ),
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
                          builder: (BuildContext context) => const MyApp()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Text(
                  "Back",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
