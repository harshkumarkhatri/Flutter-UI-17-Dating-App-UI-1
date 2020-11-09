// This file has all the screen which do not have a particular clickable thing in the app

// This is the unlock screen where the fingerprint is made

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen10_Chat.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen13_Users.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen14_FavUsers.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen17_NearbyUsers.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen19_Activity.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen20_Tour.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen21_MatchFound.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen22_FoundMatchSearching.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen23_multiLoginOptions.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen8_Biography.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen9_MatchFound.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/uaScreenItems.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import 'NavDrawer.dart';
import 'Screen12_VideoCall.dart';

class UAScreens extends StatefulWidget {
  @override
  _UAScreensState createState() => _UAScreensState();
}

class _UAScreensState extends State<UAScreens> {
  File _image;

  Future get_image() async {
    final image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        // backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: Text("Unlock"),
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
          child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen12()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 50,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Video Call",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen8()));
                  },
                  child: uaItem(
                    "User Biography",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen9()));
                  },
                  child: uaItem(
                    "Matches Found",
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Screen10()));
                    },
                    child: uaItem("Chat")),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen13()));
                  },
                  child: uaItem(
                    "Users",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen14()));
                  },
                  child: uaItem(
                    "Favourite Users",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen17()));
                  },
                  child: uaItem(
                    "Nearby Users",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    get_image();
                  },
                  child: uaItem(
                    "Open Camera",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen19()));
                  },
                  child: uaItem(
                    "Activity",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen20()));
                  },
                  child: uaItem(
                    "Carousel Screen",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen22()));
                  },
                  child: uaItem(
                    "Find Match-Searching",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen21()));
                  },
                  child: uaItem(
                    "Find Match-Found",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen23()));
                  },
                  child: uaItem(
                    "Login Options",
                  ),
                ),
              ],
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
