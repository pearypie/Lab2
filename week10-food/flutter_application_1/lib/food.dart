import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import './main.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

List<List<dynamic>> foodLists = [
  [
    "https://cdn.shopify.com/s/files/1/0551/7066/2590/products/2021-10-20_Tyson_Pack-shot1024x1024_35_1024x1024.jpg?v=1634876864",
    "Tyson ไก่ทอดกรอบสูตรคลาสสิค 600 g",
    169
  ], //1
  [
    "https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/09/french-fries-1296x728-header.jpg?w=1155&h=1528",
    "เฟรนฟรายราดชีส โรยสาหร่าย",
    35
  ], //2
  [
    "https://images.theconversation.com/files/447754/original/file-20220222-21-1x1vqbb.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=668&h=324&fit=crop",
    "ชีสเบอร์เกอร์",
    99
  ], //3
  [
    "https://cdn.cnn.com/cnnnext/dam/assets/220729162434-ultraprocessed-food-dementia-wellness-stock-super-tease.jpg",
    "ฮอตด็อกจัมโบ้",
    140
  ], //4
  [
    "https://dqk1dnz21ztlg.cloudfront.net/wp-content/uploads/2017/05/17121710/shutterstock_566085385.jpg",
    "ฮอตด็อกจัมโบ้",
    120
  ], //5
  [
    "https://dqk1dnz21ztlg.cloudfront.net/wp-content/uploads/2017/05/17121631/shutterstock_585496844.jpg",
    "ฮอตด็อกจัมโบ้",
    135
  ], //6
  [
    "https://dqk1dnz21ztlg.cloudfront.net/wp-content/uploads/2017/05/17100824/%E0%B8%AD%E0%B8%B2%E0%B8%AB%E0%B8%B2%E0%B8%A3%E0%B8%AA%E0%B8%B8%E0%B8%82%E0%B8%A0%E0%B8%B2%E0%B8%9E03.jpg",
    "ฮอตด็อกจัมโบ้",
    150
  ], //7
];

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orangeAccent.withOpacity(0.85),
      child: ListView.builder(
        itemCount: foodLists.length,
        itemBuilder: (_, index) {
          return Card(
//          elevation: 0,

            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.network(
                        foodLists[index][0],
                        fit: BoxFit.cover,
                        width: 200,
                      ),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${foodLists[index][1]}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${foodLists[index][2]} ฿",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    alignment: Alignment.bottomRight,
                    child: Chip(
                      backgroundColor: Colors.orange,
                      label: Text(
                        "Order Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
