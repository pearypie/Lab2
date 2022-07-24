import 'package:flutter/material.dart';
import 'package:holoapp/FoodMenu.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500",
        "https://mpics.mgronline.com/pics/Images/564000013113601.JPEG"),
    FoodMenu("ข้าวหมูกรอบกุ้งกระเทียม", "300",
        "https://img.kapook.com/u/2017/surauch/cooking/p1_37.jpg"),
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
                leading: Image.network(food.image),
                title: Text("ชื่อรายการ : ${food.name}"),
                subtitle: Text("ราคา : ${food.price}"),
              );
            }));
  }
}
