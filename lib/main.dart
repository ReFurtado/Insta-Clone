// ignore_for_file: unnecessary_new, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Instagram_clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 162, 2, 2),
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.black, fontFamily: "Aveny")),
            textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black))),
      home: HomePage(),
    );
  }
}