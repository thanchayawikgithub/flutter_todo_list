import 'package:flutter/material.dart';

Widget getDrawer(BuildContext context) {
  return Drawer(
      child: ListView(
    children: [
      ListTile(
          title: Text('Main Page'),
          onTap: () => Navigator.pushNamed(context, MainPage.nameRoute)),
      ListTile(
          title: Text('Second Page'),
          onTap: () => Navigator.pushNamed(context, SecondPage.nameRoute))
    ],
  ));
}

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
        SecondPage.nameRoute: (context) => SecondPage()
      },
    );
  }
}

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
