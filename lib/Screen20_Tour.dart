// THis file has the code related to carousel/tour screen

import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

// This is combination of three carousel screens which change the next button to finish on last screen.
class Screen20 extends StatefulWidget {
  @override
  _Screen20State createState() => _Screen20State();
}

class _Screen20State extends State<Screen20> {
  // Variable string for changing the text
  String snackBarText = "";

  // Alertdialog box showing
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Padding(
        padding: const EdgeInsets.only(top: 22.0, bottom: 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Text(
                "Would you like to get latest updates and notifications?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            SizedBox(height: 24),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              FlatButton(
                onPressed: () {
                  setState(() {
                    snackBarText = "You will not recive notifications.";
                  });
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (BuildContext context) => null));
                },
                child: Text(
                  "DENY",
                  style:
                      TextStyle(color: Colors.white, fontSize: 16, height: 1.2),
                ),
                color: Colors.purple[800],
              ),
              SizedBox(width: 10),
              FlatButton(
                onPressed: () {
                  setState(() {
                    snackBarText = "You will recive notifications.";
                  });
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (BuildContext context) => null));
                },
                child: Text(
                  "ALLOW",
                  style: TextStyle(
                      color: Colors.purple[800], fontSize: 16, height: 1.2),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.purple[800])),
                color: Colors.white,
              )
            ])
          ],
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  // variable for carousel dots
  int _current = 0;

  // For altering the color
  Color _color = Colors.grey;

  // List of Titles
  static List<String> imgList = [
    "Latest News Daily",
    "Regular Notifications",
    "Award Wining App"
  ];

  // List of Widgets formed with above titles
  final List<Widget> imageSlider = imgList.map((item) => texter(item)).toList();

  // For controlling the carousel
  final CarouselController _controller = CarouselController();

  // Main Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 400,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: 300,
                        color: Colors.grey[300],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Container(
                        height: 400,
                        color: _color,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: imgList.map((url) {
                              int index = imgList.indexOf(url);
                              return _current == index
                                  ? Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Container(
                                        height: 11,
                                        width: 11,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 2),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red[300]),
                                      ))
                                  : Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Container(
                                        height: 8,
                                        width: 8,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 2),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey[300]),
                                      ),
                                    );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),

              Container(
                alignment: Alignment.bottomCenter,
                child: CarouselSlider(
                  carouselController: _controller,
                  items: imageSlider,
                  options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            _current = index;
                            switch (_current) {
                              case 0:
                                _color = Colors.grey;
                                break;
                              case 1:
                                _color = Colors.yellow;
                                break;
                              case 2:
                                _color = Colors.blue;
                                break;
                              default:
                                _color = Colors.grey;
                                break;
                            }
                          },
                        );
                      },
                      enableInfiniteScroll: false,
                      reverse: false,
                      viewportFraction: 1,
                      height: 130),
                ),
              ),


              // buttons
              Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => _controller.previousPage(),
                      child: Container(
                        height: 45,
                        width: 100,
                        color: Colors.purple[800],
                        child: Center(
                            child: Text("PREV",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),

                    // Changing state of NEXT button with FINISH
                    _current == 2
                        ? GestureDetector(
                            onTap: () {
                              _controller.nextPage();
                              showAlertDialog(context);
                            },
                            child: Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.purple[800], width: 1)),
                              child: Center(
                                  child: Text("Finish",
                                      style: TextStyle(
                                          color: Colors.purple[800]))),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage();
                            },
                            child: Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.purple[800], width: 1)),
                              child: Center(
                                child: Text(
                                  "NEXT",
                                  style: TextStyle(
                                    color: Colors.purple[800],
                                  ),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),

              SizedBox(height: 60),
            ],
          ),
        ],
      ),
    );
  }

  // Widget for displaying the text on the screen.
  static Widget texter(String heading) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 36, right: 36),
              child: Text(
                heading,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 22),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 36, left: 36),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "The first mate and his Skipper too will done their very comfortable in their belt total island nest to till the end. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
