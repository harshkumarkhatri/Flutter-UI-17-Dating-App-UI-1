// This is the unlock screen where the fingerprint is made

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen8 extends StatefulWidget {
  @override
  _Screen8State createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        // backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: Text("User Biography"),
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
      body: SingleChildScrollView(
              child: Container(
          child: Column(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alfred Roberts",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 26,
                          )),
                      SizedBox(height: 5),
                      Text(
                        "Designer",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text(
                      "Address             ",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Container(
                        child: Flexible(
                            child: Text(
                      "903 Hartmann Station, New York",
                      maxLines: 5,
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    )))
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text(
                      "Age                    ",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text(
                      "56",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text(
                      "Gender              ",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text(
                      "Female",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text(
                      "Blood Group      ",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text(
                      "A+",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text(
                      "Height                ",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text(
                      "5'6",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text(
                      "Weight                ",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text(
                      "59",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 23.0,left:15,right:15),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink[600],
                        Colors.pink[400],
                        Colors.orangeAccent[700],
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Get In Touch",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
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

// Navdrawert class
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Colors.pink,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.pink[600],
            Colors.pink[400],
            Colors.orangeAccent[700]
          ]),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Container(
            //   height: 120,
            //   // color: Colors.pink,
            //   padding: EdgeInsets.all(12),
            //   child: Text(
            //     "Sushy",
            //     style: TextStyle(
            //       letterSpacing: 1.4,
            //       color: Colors.white,
            //       fontSize: 32,
            //       fontWeight: FontWeight.w400,
            //     ),
            //   ),
            //   alignment: Alignment.bottomLeft,
            // ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Daisy Sparks",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 24,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "New your city",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                )),
              ),
            ),
            SizedBox(height: 25),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.user, color: Colors.white),
                title: Text(
                  'User Profile',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {
                  Navigator.pop(context),
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Screen6(),
                    ),
                  ),
                },
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.cog, color: Colors.white),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(FontAwesomeIcons.envelope, color: Colors.white),
                title: Text(
                  'Messages',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading:
                    Icon(FontAwesomeIcons.userFriends, color: Colors.white),
                title: Text(
                  'Friends',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(FontAwesomeIcons.bell, color: Colors.white),
                title: Text(
                  'Notifications',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading:
                    Icon(FontAwesomeIcons.calendarAlt, color: Colors.white),
                title: Text(
                  'Subscription',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
            Ink(
              color: Colors.pink,
              child: ListTile(
                leading: Icon(FontAwesomeIcons.signOutAlt, color: Colors.white),
                title: Text(
                  'Sign Out',
                  style: TextStyle(
                    letterSpacing: 1.3,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                onTap: () => {Navigator.pop(context)},
              ),
            ),
          ],
        ),
      ),
    );
  }
}