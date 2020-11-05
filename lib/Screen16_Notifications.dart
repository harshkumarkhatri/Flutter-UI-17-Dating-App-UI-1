// This is the unlock screen where the fingerprint is made

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/someoneFollowed_Screen16.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/someoneLikedPhoto_Screen16.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/someoneSentAFriendRequest_Screen16.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/someoneSentPersonalMessage_Screen16.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/someoneSharedAPhoto_Screen16.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NavDrawer.dart';

class Screen16 extends StatefulWidget {
  @override
  _Screen16State createState() => _Screen16State();
}

class _Screen16State extends State<Screen16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        // backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: Text("Notifications"),
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

          // Someone followed you.
          someoneFollowed(context),
          SizedBox(
            height: 15,
          ),

          // Someone liked your photo
          someoneLiked(context),
          SizedBox(
            height: 15,
          ),

          // Someone shared a photo with you
          someoneShared(context),
          SizedBox(
            height: 15,
          ),

          // Someone sent you a friend request
          someoneSentAFriendRequest(context),
          SizedBox(
            height: 15,
          ),

          // Someone sent you a personal message
          someoneSentPersonalMessage(context),
          SizedBox(
            height: 15,
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
