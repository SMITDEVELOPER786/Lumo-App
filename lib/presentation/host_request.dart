import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class host_request extends StatefulWidget {
  const host_request({Key? key});

  @override
  State<host_request> createState() => _host_requestState();
}

class _host_requestState extends State<host_request> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 167, 255, 170),
            appBar: AppBar(
              title:
                  Text("Host requests", style: TextStyle(color: Colors.black)),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 167, 255, 170),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                Table(
                  children: [
                    data(),
                    data1("1", "Gladys", "8861"),
                    data1("2", "Esther", "8013"),
                    data1("3", "Mitchell", "5560"),
                    data1("4", "Cameron", "9151"),
                    data1("5", "Philip", "6690"),
                    data1("6", "Arlene", "1374"),
                    data1("7", "Victoria", "5626"),
                  ],
                )
              ]),
            )));
  }
}

TableRow data() {
  return TableRow(children: [
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: Text('Serial',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: Text('Profile',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: Text('Names',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: Text('User ID',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: Text('Actions',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ),
    ),
  ]);
}

void setState(Null Function() param0) {}
bool selectedvalue = false;

TableRow data1(
  String serial,
  String name,
  String id,
) {
  return TableRow(
    children: [
    Center(
      child: Text(
        serial,
        style: TextStyle(fontSize: 12),
      ),
    ),
    Center(
        child: CircleAvatar(
            backgroundImage: AssetImage(ImageConstant.imgEllipse48022x20), radius: 12)),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: Text(
          name,
          style: TextStyle(fontSize: 12),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
        child: Text(
          id,
          style: TextStyle(fontSize: 12),
        ),
      ),
    ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TextButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              icon: Icon(
                Icons.check,
                color: Colors.white,
              ),
              label: Text(
                "Approve",
                style: TextStyle(color: Colors.white),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {},
              child: Text(
                'Reject',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    )
  ]);
}
