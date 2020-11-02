// This is the unlock screen where the fingerprint is made

import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen6_userProfile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        // backgroundColor: Colors.pink[600],
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
      )
          //       child: CustomScrollView(
          //     slivers: [

          //       SliverGrid(
          //         gridDelegate:
          //             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //         delegate: SliverChildListDelegate(
          //           [Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Container(
          //         height: 200.0,
          //         color: Colors.black,
          //         alignment: Alignment.center,
          //       ),
          //       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             "Voilet Hayes",
          //           ),
          //           Icon(
          //             FontAwesomeIcons.heart,
          //           ),
          //         ],
          //       ),
          //       Text(
          //         "Artist",
          //       ),
          //     ],
          //   ),
          // ),
          //             BodyWidget_Screen9(Colors.blue),
          //             BodyWidget_Screen9(Colors.green),
          //             BodyWidget_Screen9(Colors.yellow),
          //             BodyWidget_Screen9(Colors.orange),
          //             BodyWidget_Screen9(Colors.blue),
          //             BodyWidget_Screen9(Colors.red),
          //           ],
          //         ),
          //       ),
          //     ],
          // )
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
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w300)),
            ],
          );
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
