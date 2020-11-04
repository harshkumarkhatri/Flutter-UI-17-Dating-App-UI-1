// This is the unlock screen where the fingerprint is made

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/messageItems.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NavDrawer.dart';

class Screen15 extends StatefulWidget {
  @override
  _Screen15State createState() => _Screen15State();
}

class _Screen15State extends State<Screen15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        // backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: Text("Messages"),
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
          messageItem(),
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
          messageItem(),
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
          messageItem(),
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
          messageItem(),
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
          messageItem(),
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
          messageItem(),
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
