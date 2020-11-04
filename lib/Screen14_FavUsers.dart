// This is the unlock screen where the fingerprint is made

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen9_MatchFound.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/peopleNearYou.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NavDrawer.dart';

class Screen14 extends StatefulWidget {
  @override
  _Screen14State createState() => _Screen14State();
}

class _Screen14State extends State<Screen14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        // backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: Text("Favourite Users"),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 20),
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "People Near You",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 120,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  peopleNearYou(),
                  peopleNearYou(),
                  peopleNearYou(),
                  peopleNearYou(),
                  peopleNearYou(),
                  peopleNearYou(),
                  peopleNearYou(),
                  peopleNearYou(),
                  peopleNearYou(),
                  peopleNearYou(),
                  peopleNearYou(),
                  peopleNearYou(),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favourite Users",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  child: GridView.count(
                primary: false,
                padding: const EdgeInsets.only(right: 15),
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
            ),
            //          SliverGrid(
            //   gridDelegate:
            //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            //   delegate: SliverChildListDelegate(
            //     [
            //       BodyWidget(Colors.blue),
            //       BodyWidget(Colors.green),
            //       BodyWidget(Colors.yellow),
            //       BodyWidget(Colors.orange),
            //       BodyWidget(Colors.blue),
            //       BodyWidget(Colors.red),
            //     ],
            //   ),
            // ),
            // SliverGrid(
            //   delegate: SliverChildListDelegate([
            //     BodyWidget(Colors.green),
            //     BodyWidget(Colors.yellow),
            //     BodyWidget(Colors.orange),
            //     BodyWidget(Colors.blue),
            //     BodyWidget(Colors.red),
            //   ]),
            //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //     childAspectRatio: 0.65,
            //     crossAxisSpacing: 10,
            //     mainAxisSpacing: 10,
            //   ),
            // ),
          ],
        )),
      ),
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
