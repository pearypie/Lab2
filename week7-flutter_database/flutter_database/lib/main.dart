import 'package:flutter/material.dart';
import 'package:flutter_database/model/User_controller.dart';
import 'package:flutter_database/model/User_datamodel.dart';
import 'package:flutter_database/userdata_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return UserProvider();
        })
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const userdata(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late bool femaleSelected = false;
  late bool maleSelected = false;
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Color.fromARGB(221, 255, 255, 255),
      primary: Color.fromARGB(255, 79, 1, 101),
      minimumSize: Size(300, 50),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                // ignore: prefer_const_constructors
                return const userdata();
              }));
            },
          ),
          backgroundColor: Colors.white.withOpacity(0.1),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                          color: Colors.black45,
                          offset: Offset(1, 1),
                          blurRadius: 5)
                    ]),
              ),
              Text(
                ' Me',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 49, 0, 98),
                    shadows: [
                      Shadow(
                          color: Colors.black45,
                          offset: Offset(1, 1),
                          blurRadius: 5)
                    ]),
              ),
              Text(
                ' Up',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                          color: Colors.black45,
                          offset: Offset(1, 1),
                          blurRadius: 5)
                    ]),
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.refresh,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              onPressed: () {
                setState(() {});
              },
            )
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 190, 110, 255),
            Color.fromARGB(255, 142, 0, 230)
          ])),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(scrollDirection: Axis.vertical, children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        controller: nameController,
                        validator: (str) {
                          if (str!.isEmpty) {
                            return "กรุณาใส่ชื่อ";
                          }

                          return null;
                        },
                        style: TextStyle(color: Colors.white, fontSize: 14.5),
                        decoration: InputDecoration(
                            prefixIconConstraints: BoxConstraints(minWidth: 45),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white70,
                              size: 22,
                            ),
                            border: InputBorder.none,
                            hintText: "ใส่ชื่อจริง",
                            hintStyle: TextStyle(
                                color: Colors.white60, fontSize: 14.5),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(color: Colors.white38)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(color: Colors.white70))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        controller: surnameController,
                        validator: (str) {
                          if (str!.isEmpty) {
                            return "กรุณาใส่นามสกุล";
                          }

                          return null;
                        },
                        style: TextStyle(color: Colors.white, fontSize: 14.5),
                        decoration: InputDecoration(
                            prefixIconConstraints: BoxConstraints(minWidth: 45),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white70,
                              size: 22,
                            ),
                            border: InputBorder.none,
                            hintText: "ใส่นามสกุล",
                            hintStyle: TextStyle(
                                color: Colors.white60, fontSize: 14.5),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(color: Colors.white38)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(color: Colors.white70))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        controller: numberController,
                        validator: (str) {
                          if (str!.isEmpty) {
                            return "กรุณาใส่เลขบัตรประชาชน";
                          }

                          return null;
                        },
                        style: TextStyle(color: Colors.white, fontSize: 14.5),
                        decoration: InputDecoration(
                            prefixIconConstraints: BoxConstraints(minWidth: 45),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white70,
                              size: 22,
                            ),
                            border: InputBorder.none,
                            hintText: "ใส่เขบัตรประชาชน",
                            hintStyle: TextStyle(
                                color: Colors.white60, fontSize: 14.5),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(color: Colors.white38)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(color: Colors.white70))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                maleSelected = true;

                                femaleSelected = false;
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: Colors.white60)),
                                    child: maleSelected
                                        ? Container(
                                            margin: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white70),
                                          )
                                        : SizedBox()),
                                Text('Male',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 14.5))
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                femaleSelected = true;

                                maleSelected = false;
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: Colors.white60)),
                                    child: femaleSelected
                                        ? Container(
                                            margin: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white70),
                                          )
                                        : SizedBox()),
                                Text('Female',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 14.5))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        style: raisedButtonStyle,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            var sex;
                            if (femaleSelected == true) {
                              setState(() {
                                sex = 'ผู้หญิง';
                              });
                            } else {
                              setState(() {
                                sex = 'ผู้ชาย';
                              });
                            }
                            var name = nameController.text;
                            var surname = surnameController.text;
                            var number = numberController.text;
                            print(name);
                            print(surname);
                            print(number);
                            print(sex);
                            User statement = User(
                                name.toString(),
                                surname.toString(),
                                int.parse(number),
                                sex.toString());

                            var provider = Provider.of<UserProvider>(context,
                                listen: false);
                            provider.addUser(statement);
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              // ignore: prefer_const_constructors
                              return const userdata();
                            }));
                          }
                        },
                        child: Text('ยืนยันข้อมูล'),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
