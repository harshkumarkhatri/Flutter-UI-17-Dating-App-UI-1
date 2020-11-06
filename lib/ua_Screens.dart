// This file has all the screen which do not have a particular clickable thing in the app

// This is the unlock screen where the fingerprint is made

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen13_Users.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen14_FavUsers.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen17_NearbyUsers.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
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
                        .push(MaterialPageRoute(builder: (_) => Screen13()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 50,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Users",
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
                        .push(MaterialPageRoute(builder: (_) => Screen14()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 50,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Favourite Users",
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
                        .push(MaterialPageRoute(builder: (_) => Screen17()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 50,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Nearby Users",
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
