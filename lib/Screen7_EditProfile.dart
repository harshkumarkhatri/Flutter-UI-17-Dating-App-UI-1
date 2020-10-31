// This is the unlock screen where the fingerprint is made

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen7 extends StatefulWidget {
  @override
  _Screen7State createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        // backgroundColor: Colors.pink[600],
        centerTitle: true,
        title: Text("Edit Profile"),
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
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rosie Bailey",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Artist",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "26 Years old",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "New York, USA",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Rosie Bailey",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                          fontSize: 16),
                      prefixIcon:
                          FaIcon(FontAwesomeIcons.user, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "rosiebailey@gmail.com",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                          fontSize: 16),
                      prefixIcon:
                          FaIcon(FontAwesomeIcons.envelope, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "19th September 1992",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                          fontSize: 16),
                      prefixIcon: FaIcon(FontAwesomeIcons.calendarAlt,
                          color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "New York",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                          fontSize: 16),
                      prefixIcon:
                          FaIcon(FontAwesomeIcons.mapSigns, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Art Teacher",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                          fontSize: 16),
                      prefixIcon:
                          FaIcon(FontAwesomeIcons.userTie, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23.0),
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
                        "Update Changes",
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
