import 'package:cms_app/constants.dart';
import 'package:flutter/material.dart';

class AppBarNav extends StatelessWidget {

  final Function login;

  AppBarNav({required this.login});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      title: const Text('TechTown', style: TextStyle(color: Colors.white),),
      centerTitle: false,
      actions: [IconButton(onPressed: ()=>{
        login()
      }, icon: Icon(Icons.home))],
    );
  }
}