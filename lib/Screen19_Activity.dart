// This file has the code related to the activity screen.

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/onlyPhoto_Screen19.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/onlyText_Screen19.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/textPhoto_Screen19.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NavDrawer.dart';
import 'Widgets/messageItems.dart';

class Screen19 extends StatefulWidget {
  @override
  _Screen19State createState() => _Screen19State();
}

class _Screen19State extends State<Screen19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Activity"),
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
          textPhoto(),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          onlyText(),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          onlyPhoto(context),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
         textPhoto(),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          onlyText(),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          onlyPhoto(context),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          textPhoto(),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          onlyText(),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          onlyPhoto(context),
          Divider(
            color: Colors.grey.withOpacity(
              0.8,
            ),
          ),
          messageItem(),
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
