import 'package:bloggy_app/home.dart';
import 'package:bloggy_app/message.dart';
import 'package:bloggy_app/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/message': (BuildContext context) => MessagePage(),
        '/search': (BuildContext context) => SearchPage(),
      },
    );
  }
}




