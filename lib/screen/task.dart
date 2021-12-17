import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
// void dispose() {
//   // Clean up the controller when the widget is disposed.
//   firstnumcontroller.dispose();
//   secondnumcontroller.dispose();
//   super.dispose();
// }

  _TaskState createState() => _TaskState();
}

var result = "";
bool validate = false;

// step 1
TextEditingController firstnumcontroller = TextEditingController();
TextEditingController secondnumcontroller = TextEditingController();

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Retrive')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
                controller: firstnumcontroller,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'First Num',
                  hintText: 'Enter Number',
                  border: OutlineInputBorder(),
                  errorText: validate ? "filed cannot be empty" : null,
                  errorStyle: const TextStyle(fontSize: 30),
                )),
            TextField(
              controller: secondnumcontroller,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                labelText: 'Second Num',
                hintText: 'Enter Number',
                border: OutlineInputBorder(),
                errorText: validate ? "filed cannot be empty" : null,
                errorStyle: const TextStyle(fontSize: 30),
              ),
            ),
            Text(
              "'Sum is:' ${firstnumcontroller.text + secondnumcontroller.text}",
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            OutlinedButton.icon(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.wifi),
              label: const Text(
                'click',
                textScaleFactor: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
