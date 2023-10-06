import 'package:flutter/material.dart';

class AppBarNav extends StatelessWidget {
  final Function login;

  AppBarNav({required this.login});

  @override
  Widget build(BuildContext context) {
    double maxWidth = 1220; // Your desired maximum width

    return Container(
      color: Colors.black,
      height: 80,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width:
                MediaQuery.of(context).size.width > maxWidth ? maxWidth : null,
            child: Expanded(
              child: Row(
                children: [
                  Image.asset('images/playtech-mainsite-logo.webp'),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () => {login()},
                    child: Text(
                      "GAMING PC",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(child: Row()),
                  IconButton(
                    onPressed: () => {login()},
                    icon: const Icon(Icons.person),
                    color: Colors.white,
                    hoverColor: null,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
