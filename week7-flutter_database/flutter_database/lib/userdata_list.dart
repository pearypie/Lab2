import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_database/main.dart';
import 'package:flutter_database/model/User_controller.dart';
import 'package:flutter_database/model/User_datamodel.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class userdata extends StatefulWidget {
  const userdata({Key? key}) : super(key: key);

  @override
  State<userdata> createState() => _userdataState();
}

class _userdataState extends State<userdata> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {}),
      ],
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                showDialog<bool>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('ออกจากระบบ'),
                        content: const Text('ต้องการที่จะออกจากระบบไหม?'),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text("ไม่"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              SystemNavigator.pop();
                            },
                            child: const Text("ใช่"),
                          ),
                        ],
                      );
                    });
              },
            ),
            backgroundColor: Colors.white.withOpacity(0.1),
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Data',
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
                  ' User',
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
                  ' List',
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    // ignore: prefer_const_constructors
                    return const MyHomePage(
                      title: '',
                    );
                  }));
                },
              )
            ],
          ),
          body: Consumer(
            builder: ((context, UserProvider provider, Widget? child) {
              int count = provider.user.length;
              return ListView.builder(
                  itemCount: count,
                  itemBuilder: (context, int index) {
                    User data = provider.user[index];
                    return Card(
                        color: Color.fromARGB(129, 195, 115, 245),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: ListTile(
                          title: Text(data.username.toString()),
                          subtitle: Text(
                              "วันที่ลงทะเบียน ---> ${DateFormat("dd/MM/yyyyy").format(data.date)}"),
                        ));
                  });
            }),
          )),
    );
  }
}
