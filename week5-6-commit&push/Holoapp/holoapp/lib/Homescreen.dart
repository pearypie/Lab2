import 'package:flutter/material.dart';
import 'package:holoapp/FoodMenu.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500"),
    FoodMenu("ข้าวหมูกรอบกุ้งกระเทียม", "300"),
  ];
  @override
  int number = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                title: Text("ชื่อรายการ : ${food.name}"),
                subtitle: Text("ราคา : ${food.price}"),
              );
            }));
  }
}
