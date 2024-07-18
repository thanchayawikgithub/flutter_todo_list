import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EchoMyName extends StatefulWidget {
  const EchoMyName({Key? key}) : super(key: key);
  static const nameRoute = '/echo_my_name';
  @override
  _EchoMyNameState createState() => _EchoMyNameState();
}

class _EchoMyNameState extends State<EchoMyName> {
  String result = 'ABC';

  late TextEditingController __controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    __controller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    __controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Echo My Name'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: __controller,
              onSubmitted: (value) {
                setState(() {
                  result = value;
                  __controller.clear();
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
                onPressed: () {
                  log('Clicked');
                  setState(() {
                    result = __controller.text;
                    __controller.clear();
                  });
                },
                child: Text('Echo')),
            SizedBox(height: 16.0),
            Text(result)
          ],
        ),
      ),
    );
  }
}
