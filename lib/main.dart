import 'package:alfabe_ogren/ogren.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学生駅',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ogrenme_ekrani(),
    );
  }
}
