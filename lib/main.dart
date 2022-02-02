import 'package:contact_app/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'code-bebop Netflix',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.black,
            secondary: Colors.white,
            brightness: Brightness.dark),
      ),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Container(child: Center(child: Text('Home'))),
                  Container(child: Center(child: Text('Search'))),
                  Container(child: Center(child: Text('Save'))),
                  Container(child: Center(child: Text('More'))),
                ]),
            bottomNavigationBar: BottomBar(),
          )),
    );
  }
}
