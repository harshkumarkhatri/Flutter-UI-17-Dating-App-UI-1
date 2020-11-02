import 'package:flutter/material.dart';


Widget simpleMessage(context,message){
  return  Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
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
                                color: Colors.black45,
                                spreadRadius: 1,
                                blurRadius: 2),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 55.0, right: 20, top: 10, bottom: 13),
                          child: Text(
                            message,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
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