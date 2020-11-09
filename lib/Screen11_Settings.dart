// This file has the code related to settings screen

import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class Screen11 extends StatefulWidget {
  @override
  _Screen11State createState() => _Screen11State();
}

class _Screen11State extends State<Screen11> {
  bool isSwitched = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  bool isSwitched5 = false;
  bool isSwitched6 = false;
  bool isSwitched7 = false;
  bool isSwitched8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Settings"),
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
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
            child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home, color: Colors.grey),
                          SizedBox(width: 15),
                          Text(
                            "Visibility",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications_none_outlined,
                              color: Colors.grey),
                          SizedBox(width: 15),
                          Text(
                            "Notifications",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Switch(
                        value: isSwitched2,
                        onChanged: (value) {
                          setState(() {
                            isSwitched2 = value;
                            print(isSwitched2);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.volume_up_outlined, color: Colors.grey),
                          SizedBox(width: 15),
                          Text(
                            "Alerts",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Switch(
                        value: isSwitched3,
                        onChanged: (value) {
                          setState(() {
                            isSwitched3 = value;
                            print(isSwitched3);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.sync, color: Colors.grey),
                          SizedBox(width: 15),
                          Text(
                            "Cloud Sync",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Switch(
                        value: isSwitched4,
                        onChanged: (value) {
                          setState(() {
                            isSwitched4 = value;
                            print(isSwitched4);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.speed, color: Colors.grey),
                          SizedBox(width: 15),
                          Text(
                            "Statistic Reports",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Switch(
                        value: isSwitched5,
                        onChanged: (value) {
                          setState(() {
                            isSwitched5 = value;
                            print(isSwitched5);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.menu_book, color: Colors.grey),
                          SizedBox(width: 15),
                          Text(
                            "Privacy",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Switch(
                        value: isSwitched6,
                        onChanged: (value) {
                          setState(() {
                            isSwitched6 = value;
                            print(isSwitched6);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.lock_outline, color: Colors.grey),
                          SizedBox(width: 15),
                          Text(
                            "Security",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Switch(
                        value: isSwitched7,
                        onChanged: (value) {
                          setState(() {
                            isSwitched7 = value;
                            print(isSwitched7);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phonelink_lock_rounded,
                              color: Colors.grey),
                          SizedBox(width: 15),
                          Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Switch(
                        value: isSwitched8,
                        onChanged: (value) {
                          setState(() {
                            isSwitched8 = value;
                            print(isSwitched8);
                          });
                        },
                        activeTrackColor: Colors.lightGreenAccent,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
