import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Let\' do it',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Home(),
    );
  }
}
