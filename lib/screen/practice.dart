import 'package:flutter/material.dart';

class practice extends StatefulWidget {
  const practice({Key? key}) : super(key: key);

  @override
  _practiceState createState() => _practiceState();
}

class _practiceState extends State<practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello')),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: const Text('hello pramod'),
            ),
            Container(
              child: const Text('hello me'),
            )
          ],
        ),
      ),
    );
  }
}
