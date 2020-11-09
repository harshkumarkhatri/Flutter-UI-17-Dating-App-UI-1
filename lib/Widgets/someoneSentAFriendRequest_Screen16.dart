// This file has widget related to notification when someone sends you a friend request.


import 'package:flutter/material.dart';

Widget someoneSentAFriendRequest(context) {
  return Stack(
    alignment: AlignmentDirectional.centerStart,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45, spreadRadius: 1, blurRadius: 2),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 45.0, right: 20, top: 10, bottom: 13),
                      child: Text(
                        "John Has sent you a friend request.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 45.0, right: 20, bottom: 5),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 18, right: 18, top: 3, bottom: 3),
                          child: Text(
                            "Add Friend",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            colors: [
                              Colors.pink[600],
                              Colors.pink[400],
                              Colors.orangeAccent[700]
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text("03:45 PM")
            ],
          ),
        ),
      ),
      Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white60),
                    color: Colors.green,
                    shape: BoxShape.circle)),
          )
        ],
      )
    ],
  );
}
