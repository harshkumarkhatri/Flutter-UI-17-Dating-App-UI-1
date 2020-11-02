import 'package:flutter/material.dart';

Widget withMedia(context, message) {
  return Stack(
    alignment: AlignmentDirectional.centerEnd,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 50,
                width: MediaQuery.of(context).size.width,
                // color: Colors.amber[600],
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45, spreadRadius: 1, blurRadius: 2),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 55.0, left: 20, top: 10, bottom: 13),
                  child: Column(
                    children: [
                      Text(
                        message,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 100,
                            color: Colors.grey,
                            width: 95,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 100,
                            color: Colors.red,
                            width: 98,
                          )
                        ],
                      )
                    ],
                  ),
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
