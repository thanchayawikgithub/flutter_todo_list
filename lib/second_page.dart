import 'package:flutter/material.dart';
import 'package:flutter_todo_list/main_drawer.dart';

class SecondPage extends StatelessWidget {
  static const nameRoute = '/second_page';
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      drawer: getDrawer(context),
      body: Container(
        child: Center(
          child: Text('Second Page'),
        ),
      ),
    );
  }
}
