import 'package:flutter/material.dart';
import 'package:flutter_application_3/screen/practice.dart';
// import 'package:flutter_application_3/screen/mybutton.dart';
// import 'package:flutter_application_3/screen/task.dart';
// import 'package:flutter_application_3/screen/mytext.dart';
// import 'package:flutter_application_3/screen/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final _title = 'column Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: _title,
      home: practice(),
    );
  }
}
