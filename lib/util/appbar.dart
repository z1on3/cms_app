import 'package:cms_app/util/menu_item.dart';
import 'package:flutter/material.dart';

class AppBarNav extends StatelessWidget {
  final Function login;

  AppBarNav({required this.login});

  @override
  Widget build(BuildContext context) {
    double maxWidth = 1370;
    double currWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      height: 80,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: currWidth >= maxWidth + 32 ? maxWidth : currWidth - 32,
            child: Row(
              children: [
                Image.asset("images/playtech-mainsite-logo.webp"),
                SizedBox(width: 20),
                Text(
                  "GAMING PC",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "FjallaOne",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                MenuItem(onClick: login),
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
        ],
      ),
    );
  }
}
