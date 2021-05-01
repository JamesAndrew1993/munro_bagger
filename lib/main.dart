import 'package:flutter/material.dart';
import 'IntroPage.dart';
import 'home_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Munro Bagger App",
      theme: ThemeData(
        primaryColor: Color(0xFf3366FF),
      ),
      home: Home(),
      //home: IntroPage(),
      //routes: <String, WidgetBuilder> {
      //},
    );
  }
}
