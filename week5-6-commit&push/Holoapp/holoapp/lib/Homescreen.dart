import 'package:flutter/material.dart';
import 'package:holoapp/FoodMenu.dart';

import 'ExchangeRate.dart';
import 'MoneyBox.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late ExchangeRate _dataformapi;
  @override
  void initState() {
    super.initState();
    print("เรียกใช้งาน initState");
    getExchangeRate();
  }

  Future<ExchangeRate> getExchangeRate() async {
    var url = Uri.parse("https://open.er-api.com/v6/latest/USD");
    var response = await http.get(url);
    setState(() {
      _dataformapi = exchangeRateFromJson(response.body);
      //json => dart object
    });
    return _dataformapi;
  }

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
        appBar: AppBar(
          title: Text("Api เรียนใช้สกุลเงิน"),
        ),
        body: FutureBuilder(
          future: getExchangeRate(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              var result = snapshot.data;
              return ListView(
                children: [
                  ListTile(
                    title: Text(result.baseCode),
                  ),
                  ListTile(
                    title: Text(result.timeLastUpdateUtc.toString()),
                  ),
                  ListTile(
                    title: Text(result.rates['THB'].toString()),
                  ),
                  ListTile(
                    title: Text(result.rates['USD'].toString()),
                  )
                ],
              );
            }
            return LinearProgressIndicator();
          },
        ));
  }
}
