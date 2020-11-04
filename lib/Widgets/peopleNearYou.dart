import 'package:flutter/material.dart';

Widget peopleNearYou() {
  return Padding(
    padding: const EdgeInsets.only(right:8.0),
    child: Container(
      width: 90.0,
      // color: Colors.red,
      child: Column(
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 8),
          Text("1.2 Mi",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300))
        ],
      ),
    ),
  );
}
