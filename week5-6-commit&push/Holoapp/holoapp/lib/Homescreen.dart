import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  int number = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: new EdgeInsets.all(10.0),
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  number--;
                });
              },
              child: Icon(Icons.remove),
            )
          ],
        ),
      ),
      body: Container(
          child: Center(
        child: Text(number.toString()),
      )),
    );
  }
}
