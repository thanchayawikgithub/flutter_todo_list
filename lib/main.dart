import 'package:flutter/material.dart';
import 'package:flutter_todo_list/echo_my_name.dart';
import 'package:flutter_todo_list/main_page.dart';
import 'package:flutter_todo_list/second_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MainPage.nameRoute,
      routes: {
        MainPage.nameRoute: (context) => MainPage(),
        SecondPage.nameRoute: (context) => SecondPage(),
        EchoMyName.nameRoute: (context) => EchoMyName()
      },
    );
  }
}
