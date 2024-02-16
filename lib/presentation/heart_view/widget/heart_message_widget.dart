import 'package:flutter/material.dart';


class HeartMessageWidget extends StatelessWidget {
  const HeartMessageWidget({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * .7,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 243, 33, 222),
                const Color.fromARGB(255, 243, 33, 222),
                const Color.fromARGB(255, 243, 33, 222),
              ]),
              // color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(5),
                  topRight: Radius.circular(5)),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: const Color.fromARGB(255, 23, 135, 227),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('12', style: TextStyle(fontSize: 12, color: Colors.white)),
                SizedBox(
                  width: 10,
                ),
              ],
            )),
        Column(
          children: [
            Text(
              '💎🌹🌸🌹Name💎🌹🌸🌹',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              '03403043040304',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            )
          ],
        )
      ]),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.3),
      ),
    );
  }
}

