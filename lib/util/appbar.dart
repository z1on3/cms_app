import 'package:flutter/material.dart';

class AppBarNav extends StatelessWidget {
  final Function login;

  AppBarNav({required this.login});

  @override
  Widget build(BuildContext context) {
    double maxWidth = 1140; // Your desired maximum width

    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      height: 80,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Row()),
          Text(
            "TechTown",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: MediaQuery.of(context).size.width - maxWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => {login()},
                  icon: const Icon(Icons.person),
                  color: Colors.white,
                  hoverColor: null,
                ),
              ],
            ),
          ),
          Expanded(child: Row()),
        ],
      ),
    );
  }
}
