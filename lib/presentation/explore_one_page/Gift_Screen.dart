// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GiftScreens extends StatefulWidget {
  const GiftScreens({Key? key}) : super(key: key);

  @override
  State<GiftScreens> createState() => _GiftScreensState();
}

class _GiftScreensState extends State<GiftScreens> {

  var BootomList = [
    {
      "image": "https://i.postimg.cc/QCPKSd5s/Butterfly-Side-View.png",
      "name": "Butterfly",
      "coin": "3000",
      "tap": false
    },
    {
      "image": "https://i.postimg.cc/x8QDNWtR/Festival.png",
      "name": "Birthday",
      "coin": "1000",
      "tap": false
    },
    {
      "image": "https://i.postimg.cc/Y2NwBCCy/Confetti.png",
      "name": "Celebrate",
      "coin": "1500",
      "tap": false
    },
    {
      "image": "https://i.postimg.cc/1tf2nyGw/download-9-removebg-preview.png",
      "name": "Loin",
      "coin": "1500",
      "tap": false
    },
    {
      "image": "https://i.postimg.cc/nr1840Wt/Frame-1171275707.png",
      "name": "Super Car",
      "coin": "1500",
      "tap": false
    },
    {
      "image": "https://i.postimg.cc/d1rc1qm3/Applause.png",
      "name": "Appreciate",
      "coin": "3000",
      "tap": false
    },
    {
      "image": "https://i.postimg.cc/L6NKhQft/Gift.png",
      "name": "Gift",
      "coin": "3000",
      "tap": false
    },
    {
      "image": "https://i.postimg.cc/7LpywCzj/New-Year-s-Eve.png",
      "name": "Events",
      "coin": "1500",
      "tap": false
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 3, // Number of items in each row
          childAspectRatio: 0.8, // Adjust this value to set the height
        ),
        itemCount: BootomList.length, // Total number of items in the grid
        itemBuilder: (context, index) {
          return _buildGridItem(index, BootomList);
        },
      ),
    );
  }

  Widget _buildGridItem(int index, BootomList) {
    // You can customize this function to create your grid items
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 180, 223, 6)),
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Container(
        color: Color.fromARGB(255, 230, 233, 221),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Image.network(BootomList[index]["image"].toString(),
                height: 70.0, width: 70.0),
                SizedBox(height: 5,), // Your image
            Text(BootomList[index]["name"].toString(),style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 5,), // Your image

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [  Image.network("https://i.postimg.cc/RFh1vF75/pngegg-5-1-1-removebg-preview.png"),
              SizedBox(width: 1,),
               Text(BootomList[index]["coin"].toString())],
            ), // Your icon
          ],
        ),
      ),
    );
  }
}