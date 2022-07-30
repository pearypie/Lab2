import 'package:flutter/material.dart';

class userdata extends StatefulWidget {
  const userdata({Key? key}) : super(key: key);

  @override
  State<userdata> createState() => _userdataState();
}

class _userdataState extends State<userdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
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
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  color: Color.fromARGB(129, 195, 115, 245),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: const SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(child: Text('test Card')),
                  ),
                );
              }),
        ));
  }
}
