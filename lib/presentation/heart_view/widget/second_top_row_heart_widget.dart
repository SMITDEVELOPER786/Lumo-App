import 'package:flutter/material.dart';


class SecondTopRowHeartWidget extends StatelessWidget {
  const SecondTopRowHeartWidget({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .92,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/coin.png'),
                    width: 20,
                  ),
                  Text('123434',
                      style: TextStyle(
                          fontSize: 12, color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.arrow_circle_up,
                      color: Colors.white,
                    ),
                  )
                ],
              )),
          Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.blue,
                  Colors.white,
                ]),
                // color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor:
                        const Color.fromARGB(255, 23, 135, 227),
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('12',
                      style: TextStyle(
                          fontSize: 12, color: Colors.white)),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )),
          Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 109, 110, 114),
                  Color.fromARGB(255, 147, 148, 152),
                  Color.fromARGB(255, 147, 148, 152),
                ]),
                // color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor:
                        const Color.fromARGB(255, 23, 135, 227),
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('12',
                      style: TextStyle(
                          fontSize: 12, color: Colors.white)),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )),
          Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color.fromARGB(255, 243, 33, 222),
                  const Color.fromARGB(255, 243, 33, 222),
                  const Color.fromARGB(255, 243, 33, 222),
                ]),
                // color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor:
                        const Color.fromARGB(255, 23, 135, 227),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('12',
                      style: TextStyle(
                          fontSize: 12, color: Colors.white)),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
