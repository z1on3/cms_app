import 'package:cms_app/constants.dart';
import 'package:cms_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppBarNav extends StatelessWidget {
  final Function login;

  AppBarNav({required this.login});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      clipBehavior: Clip.none,
      height: 60,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "TechTown",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(child: Row()),
          SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => {login()},
                  icon: const Icon(Icons.person),
                  color: Colors.white,
                  hoverColor: AppTheme.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
