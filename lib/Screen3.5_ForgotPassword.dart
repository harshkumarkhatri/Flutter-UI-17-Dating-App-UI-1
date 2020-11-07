import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen3_Signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen3_5 extends StatefulWidget {
  @override
  _Screen3_5State createState() => _Screen3_5State();
}

class _Screen3_5State extends State<Screen3_5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // color: Colors.grey,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey,
              Colors.grey.withOpacity(0.8),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 1.7,
                    bottom: MediaQuery.of(context).size.width / 5,
                  ),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1.5),
                  ),
                ),
                Text(
                  "A password reset mail will be send to you on the registered email address",textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1.2,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height:55),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintText: "Username or Email",
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.2,
                        fontSize: 16),
                    prefixIcon:
                        FaIcon(FontAwesomeIcons.user, color: Colors.white),
                  ),
                ),
                SizedBox(height: 45),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[600],
                          blurRadius: 2,
                          spreadRadius: 0.5)
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink[600],
                        Colors.pink[400],
                        Colors.orangeAccent[700]
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Send",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1.2,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
