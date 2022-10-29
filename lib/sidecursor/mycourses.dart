import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:project/Pages/side_drawer.dart';
import '../studenthome.dart';
import '../login.dart';

class courses extends StatefulWidget {
  const courses({Key? key}) : super(key: key);

  @override
  State<courses> createState() => _coursesState();
}

class _coursesState extends State<courses> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          scaffoldBackgroundColor: Color.fromARGB(255, 130, 136, 139)),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Hajiri'),
        ),
        body: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.book),
              onPressed: () {
                log("button pressed");
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ParkingOverview()));
              },
              label: const Text(
                "My courses",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 7, 176, 156),
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            // Divider(
            //   thickness: 5,
            //   color: Colors.black,
            // ),
            // Image.asset(
            //   "assets/images/53.png",
            //   height: 300.0,
            //   width: 300.0,
            // ),
            ElevatedButton.icon(
              icon: const Icon(Icons.new_label),
              onPressed: () {
                log("button pressed");
                // Navigator.push(context,
                //    // MaterialPageRoute(builder: (context) => Null));
              },
              label: const Text(
                "new",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 7, 176, 156),
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ],
        ));
  }
}
