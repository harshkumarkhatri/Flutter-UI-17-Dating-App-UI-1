import 'package:flutter/material.dart';

Widget photoItem(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0,right:4),
    child: Container(
      height: 120,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
    ),
  );
}
