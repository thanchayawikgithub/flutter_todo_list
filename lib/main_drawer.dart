import 'package:flutter/material.dart';
import 'package:flutter_todo_list/echo_my_name.dart';
import 'package:flutter_todo_list/main_page.dart';
import 'package:flutter_todo_list/second_page.dart';

Widget getDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
    children: [
      ListTile(
          title: Text('Main Page'),
          onTap: () => Navigator.pushNamed(context, MainPage.nameRoute)),
      ListTile(
          title: Text('Second Page'),
          onTap: () => Navigator.pushNamed(context, SecondPage.nameRoute)),
      ListTile(
          title: Text('Echo My Name'),
          onTap: () => Navigator.pushNamed(context, EchoMyName.nameRoute))
    ],
  ));
}
