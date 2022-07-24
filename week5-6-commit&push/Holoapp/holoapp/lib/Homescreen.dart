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
      body: Container(
          child: ListView(
        children: getData(10),
      )),
    );
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      data.add(Text("เมนูที่ ${i + 1}"));
    }
    return data;
  }
}
