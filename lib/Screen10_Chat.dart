// This file has the code related to the chat screen

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/onlyMedia.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/simpleMessage.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/withMedia.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NavDrawer.dart';

class Screen10 extends StatefulWidget {
  @override
  _Screen10State createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Oscar French",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
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
        body: Stack(
          children: [
            Container(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  simpleMessage(context,
                      "Entry A;jfn jnfjrnf nndfe ijnpn j dj cjn dej  de ojde dnioe dje noj eo dje doej bpijnpjn ponpio ij ij ii jijrijosijreoijhr "),
                  SizedBox(
                    height: 20,
                  ),
                  withMedia(context, "hey there these are some of my photos."),
                  SizedBox(
                    height: 20,
                  ),
                  simpleMessage(context, "You look good. Send some more."),
                  SizedBox(
                    height: 20,
                  ),
                  onlyMedia(
                    context,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  simpleMessage(context,
                      "Entry A;jfn jnfjrnf nndfe ijnpn j dj cjn dej  de ojde dnioe dje noj eo dje doej bpijnpjn ponpio ij ij ii jijrijosijreoijhr "),
                  SizedBox(
                    height: 20,
                  ),
                  withMedia(context, "hey there these are some of my photos."),
                  SizedBox(
                    height: 20,
                  ),
                  simpleMessage(context, "You look good. Send some more."),
                  SizedBox(
                    height: 20,
                  ),
                  onlyMedia(
                    context,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 20,
                          spreadRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(
                      18,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Start Typing...",
                        suffixIcon: Icon(
                          Icons.send,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
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
