import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String name = "";
  String lastname = "";
  bool validate = false;

// step 1
  TextEditingController mycontroller = TextEditingController();
  TextEditingController mysurnamecontroller = TextEditingController();

  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Retrive')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                TextField(
                    controller: mycontroller,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      labelText: 'Firstname',
                      hintText: 'Enter your FirstName',
                      border: OutlineInputBorder(),
                      errorText: validate ? "filed cannot be empty" : null,
                      errorStyle: const TextStyle(fontSize: 30),
                    )),
              ],
            ),
            Column(
              children: [
                TextField(
                    controller: mysurnamecontroller,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      labelText: 'LastName',
                      hintText: 'Enter your LastName',
                      border: OutlineInputBorder(),
                      errorText: validate ? "filed cannot be empty" : null,
                      errorStyle: const TextStyle(fontSize: 30),
                    )),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              mycontroller.text + "  " + mysurnamecontroller.text,
              textScaleFactor: 3,
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: FloatingActionButton(
            onPressed: () {
              setState(() {
                name = mycontroller.text;
                lastname = mysurnamecontroller.text;

                name.isEmpty && lastname.isEmpty
                    ? validate = true
                    : validate = false;
              });
            },
            child: Icon(Icons.add)),
      ),
    );
  }
}
