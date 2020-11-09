// This file has the code related to match found screen when the match is still being searched

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen22 extends StatefulWidget {
  @override
  _Screen22State createState() => _Screen22State();
}

class _Screen22State extends State<Screen22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey[400],
          alignment: Alignment.center,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 6,
                bottom: MediaQuery.of(context).size.height / 6,
                left: 25,
                right: 25,
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink[600],
                      Colors.pink[400],
                      Colors.orangeAccent[700]
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SpinKitRipple(
                      color: Colors.yellow,
                      borderWidth: 30,
                      size: 160,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Searching",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8.0),
                      child: Text(
                        "Our Search Parameters are finding best match for you. You can get in touch history once the search completes.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.3,
                          letterSpacing: 1.2,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
