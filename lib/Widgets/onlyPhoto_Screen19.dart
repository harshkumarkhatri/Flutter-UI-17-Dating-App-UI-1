import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Widgets/onlyPhoto_photoItem_Screen19.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget onlyPhoto(context) {
  return Container(
    // height: 50,
    // color: Colors.amber[600],
    child: Row(
      children: [
       
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alta Ryan",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "26 mins ago",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Row(children: [
                    Icon(FontAwesomeIcons.heart, color: Colors.grey, size: 12),
                    Text(
                      "24.5K",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      FontAwesomeIcons.commentAlt,
                      color: Colors.grey,
                      size: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Text(
                        "34K",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    )
                  ]),
                ],
              ),
              Container(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    photoItem(context),
                    photoItem(context),
                    photoItem(context),
                    photoItem(context)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
