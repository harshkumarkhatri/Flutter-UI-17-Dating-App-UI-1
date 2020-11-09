// This file has the code related to the match found screen.

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NavDrawer.dart';

class Screen9 extends StatefulWidget {
  @override
  _Screen9State createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Match Found"),
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
          child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        childAspectRatio: 0.65,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          BodyWidget_Screen9(Colors.red),
          BodyWidget_Screen9(Colors.pink),
          BodyWidget_Screen9(Colors.blue),
          BodyWidget_Screen9(Colors.purple),
          BodyWidget_Screen9(Colors.orange),
          BodyWidget_Screen9(Colors.brown),
          BodyWidget_Screen9(Colors.lightGreenAccent),
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

class BodyWidget_Screen9 extends StatelessWidget {
  final Color color;

  BodyWidget_Screen9(this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 175.0,
          width: MediaQuery.of(context).size.width,
          color: color,
          alignment: Alignment.center,
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Voilet Hayes",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 21,
                    fontWeight: FontWeight.w400)),
            Icon(
              FontAwesomeIcons.heart,
            ),
          ],
        ),
        SizedBox(height: 1),
        Text("Artist",
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w300)),
      ],
    );
  }
}
