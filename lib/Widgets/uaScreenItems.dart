import 'package:flutter/material.dart';

Widget uaItem(name) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      height: 50,
      color: Colors.blue,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    ),
  );
}
