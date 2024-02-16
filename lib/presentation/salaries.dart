import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class salaries extends StatefulWidget {
  const salaries({Key? key});

  @override
  State<salaries> createState() => _salariesState();
}

class _salariesState extends State<salaries> {
  var mainCheck = false;

  var userList = [
    {"check": false},
    {"check": false},
    {"check": false},
    {"check": false},
    {"check": false},
    {"check": false},
    {"check": false},
  ];

  setData(int index) {
    setState(() {
      print(index);
      userList[index]["check"] = !userList[index]["check"]!;
    });
  }

  setAllData() {
    if (mainCheck) {
      
      mainCheck = false;

      for (var i = 0; i < userList.length; i++) {
        userList[i]["check"] = false;
      }
    } else {
      mainCheck = true;

      for (var i = 0; i < userList.length; i++) {
        userList[i]["check"] = true;
      }
    }
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 167, 255, 170),
      appBar: AppBar(
        title: Text("Users", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 167, 255, 170),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 22, 80, 23),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(children: [
                        Text("December Salary",
                            style: TextStyle(color: Colors.white)),
                        Text(' \$132,36337,936',
                            style: TextStyle(color: Colors.white))
                      ]),
                    ),
                  ),
                ),
            Table(
              children: [
                data(setAllData, mainCheck),
                    data1("1", "Gladys", "8861", "\$576.28", "12:01 pm", 0, setData,
                    userList),
                    data1("2", "Esther", "8013", "\$779.58", "11:23 pm", 1, setData,
                    userList),
                    data1("3", "Mitchell", "5560", "\$928.41", "04:15 pm", 2, setData,
                    userList),
                    data1("4", "Cameron", "9151", "\$202.87", "07:38 pm", 3, setData,
                    userList),
                    data1("5", "Philip", "6690", "\$406.27", "07:59 pm", 4, setData,
                    userList),
                    data1("6", "Arlene", "1374", "\$943.65", "11:49 pm", 5, setData,
                    userList),
                    data1("7", "Victoria", "5626", "\$778.35", "07:40 pm", 6, setData,
                    userList),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(" Page 1 of 8"),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          color: Color.fromARGB(255, 136, 240, 140),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child:
                                  Icon(Icons.arrow_back_ios, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          color: Colors.green,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

TableRow data(setAllData, maincheck) {
  return TableRow(children: [
    Checkbox(
      checkColor: Color.fromARGB(255, 3, 125, 18),
      fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
      focusColor: Colors.white,
      activeColor: Color.fromARGB(255, 167, 255, 170),
      value: maincheck,
      onChanged: (isChecked) {
        setAllData();
      },
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
          child: Text('Serial',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
          child: Text('Profile',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
          child: Text('Names',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
          child: Text('User ID',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
          child: Text('Salaries',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
          child: Text('Date Due',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))),
    ),
  ]);
}

TableRow data1(
  String serial,
  String name,
  String id,
  String totalCoins,
  String time,
  int index,
  Function(int) setData,
  List<Map<String, dynamic>> userList,
) {
  return TableRow(children: [
    Checkbox(
      checkColor: Color.fromARGB(255, 3, 125, 18),
      fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
      focusColor: Colors.white,
      activeColor: Color.fromARGB(255, 167, 255, 170),
      value: userList[index]["check"],
      onChanged: (isChecked) {
        setData(index);
      },
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(child: Text(serial, style: TextStyle(fontSize: 12))),
    ),
    Padding(
      padding: const EdgeInsets.all(6.0),
      child: Center(
          child: CircleAvatar(
              backgroundImage: AssetImage(ImageConstant.imgEllipse48022x20),
              radius: 12)),
    ),
    Padding(
        padding: const EdgeInsets.all(6.0),
        child: Center(child: Text(name, style: TextStyle(fontSize: 12)))),
    Padding(
        padding: const EdgeInsets.all(6.0),
        child: Center(child: Text(id, style: TextStyle(fontSize: 12)))),
    Padding(
        padding: const EdgeInsets.all(6.0),
        child: Center(child: Text(totalCoins, style: TextStyle(fontSize: 12)))),
    Padding(
        padding: const EdgeInsets.all(6.0),
        child: Center(child: Text(time, style: TextStyle(fontSize: 12)))),
  ]);
}
