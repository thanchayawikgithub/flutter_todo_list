import 'package:flutter/material.dart';
import 'package:flutter_todo_list/main_drawer.dart';

class MainPage extends StatelessWidget {
  static const nameRoute = '/main_page';
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      drawer: getDrawer(context),
      body: Container(
        child: Center(
          child: Text('Main Page'),
        ),
      ),
    );
  }
}
