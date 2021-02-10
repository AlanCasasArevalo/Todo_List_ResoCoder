import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material_APP_BAR'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello world'),
          ),
        ),
      ),
    );
  }
}

