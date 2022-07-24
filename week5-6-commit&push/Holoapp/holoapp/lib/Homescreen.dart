import 'package:flutter/material.dart';
import 'package:holoapp/FoodMenu.dart';

import 'MoneyBox.dart';

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
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        MoneyBox("ยอดคงเหลือ", 100000, Colors.red, 100),
        SizedBox(
          height: 5,
        ),
        MoneyBox("รายรับ", 100000, Colors.orange, 100),
        SizedBox(
          height: 5,
        ),
        MoneyBox("รายจ่าย", 100000, Colors.green, 100),
        SizedBox(
          height: 5,
        ),
        MoneyBox("ค้างขำระเงิน", 100000, Colors.purple, 100),
      ]),
    ));
  }
}
