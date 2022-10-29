import 'package:flutter/material.dart';
import 'package:project/Routine.dart';
import 'package:project/sidecursor/feedback.dart';
import 'package:project/sidecursor/mycourses.dart';
import 'package:project/studenthome.dart';

import '../login.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Dishan'),
            accountEmail: Text('dishan.181409@ncit.edu.np'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/1.jpg",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => attendance()));
            },
          ),
          ListTile(
              leading: Icon(Icons.book_sharp),
              title: Text('My courses'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => courses()));
              }),
          ListTile(
            leading: Icon(Icons.copy),
            title: Text('Routine'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Routine()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.chat_bubble),
            title: Text('Chat'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Feedback'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => feed()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginpage()));
            },
          ),
        ],
      ),
    );
  }
}
