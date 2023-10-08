// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Function onClick;

  MenuItem({required this.onClick});
  var x = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "GAMING PC",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: "FjallaOne",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
