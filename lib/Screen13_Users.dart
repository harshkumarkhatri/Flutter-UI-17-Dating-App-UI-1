// This is the unlock screen where the fingerprint is made

import 'package:flutter/material.dart';

import 'NavDrawer.dart';
import 'Screen9_MatchFound.dart';

class Screen13 extends StatefulWidget {
  @override
  _Screen13State createState() => _Screen13State();
}

class _Screen13State extends State<Screen13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Users"),
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
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
            child: Container(
              alignment: Alignment.centerLeft,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Search",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
                child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              childAspectRatio: 1 / 1.3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                BodyWidget_Screen13(Colors.blue),
                BodyWidget_Screen13(Colors.purple),
                BodyWidget_Screen13(Colors.orange),
                BodyWidget_Screen13(Colors.brown),
                BodyWidget_Screen13(Colors.lightGreenAccent),
                BodyWidget_Screen13(Colors.blue),
                BodyWidget_Screen13(Colors.purple),
                BodyWidget_Screen13(Colors.orange),
                BodyWidget_Screen13(Colors.brown),
                BodyWidget_Screen13(Colors.lightGreenAccent),
                BodyWidget_Screen13(Colors.blue),
                BodyWidget_Screen13(Colors.purple),
                BodyWidget_Screen13(Colors.orange),
                BodyWidget_Screen13(Colors.brown),
                BodyWidget_Screen13(Colors.lightGreenAccent),
              ],
            )),
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

class BodyWidget1 extends StatelessWidget {
  final Color color;

  BodyWidget1(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      color: color,
      alignment: Alignment.center,
    );
  }
}

class BodyWidget_Screen13 extends StatelessWidget {
  final Color color;

  BodyWidget_Screen13(this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 130.0,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration:
                          BoxDecoration(color: color, shape: BoxShape.circle),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white54),
                              color: Colors.green,
                              shape: BoxShape.circle),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          "Cordelia Harrison",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ],
    );
  }
}
