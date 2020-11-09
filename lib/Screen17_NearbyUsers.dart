// This file has the code related to nearby users screen

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/nearbyUserItem.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NavDrawer.dart';
import 'Widgets/messageItems.dart';

class Screen17 extends StatefulWidget {
  @override
  _Screen17State createState() => _Screen17State();
}

class _Screen17State extends State<Screen17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Nearby Users"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pink[600],
                Colors.pink[400],
                Colors.orangeAccent[700],
              ],
            ),
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Container(
          child: ListView(
        padding: const EdgeInsets.all(15),
        children: <Widget>[
          SizedBox(height: 5),
          nearbyUserITem("Alfred Walton", "0.2 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Tomm Hilfigure", "0.3 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Dustin Hubbard", "1.5 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Aaron prince", "1.8 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Alfred Walton", "0.2 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Tomm Hilfigure", "0.3 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Dustin Hubbard", "1.5 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Aaron prince", "1.8 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Alfred Walton", "0.2 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Tomm Hilfigure", "0.3 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Dustin Hubbard", "1.5 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          nearbyUserITem("Aaron prince", "1.8 Miles"),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
        ],
      )),
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }
}
