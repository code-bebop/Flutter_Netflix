import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'code-bebop Netflix',
    theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
      ),
      home: DefaultTabController(length: 4, child: Scaffold(body: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
        Text('하나'),
        Text('둘'),
        Text('셋'),
        Text('넷'),
      ]))),
    );
  }
}