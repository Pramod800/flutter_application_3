import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Buttons Example')),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  print('you have single clicked on button');
                },
                onLongPress: (){
                  print('you have single clicked on button');
                },
                child: const Text("Text"),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.red,
                    elevation: 20,
                    shadowColor: Colors.yellow),
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Elevated")),
              const SizedBox(height: 20),
              OutlinedButton.icon(
                onPressed: () {},
                 icon: const Icon(Icons.wifi),
                 label: const Text('click', textScaleFactor: 3,),
                 ),
            ],
          ),
        ));
  }
}
