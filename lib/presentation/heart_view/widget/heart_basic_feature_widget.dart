import 'package:flutter/material.dart';
class HeartBasicFeatureWidget extends StatelessWidget {
  const HeartBasicFeatureWidget({
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
            width: 80,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.3),
            ),
            child: Text('Say Hi',
                style:
                    TextStyle(fontSize: 12, color: Colors.white)),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.red,
            ),
            child: Center(
                child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 20,
            )),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(colors: [
                  Colors.purple,
                  Colors.purple,
                  const Color.fromARGB(255, 173, 76, 190),
                ])),
            child: Center(
                child: Icon(
              Icons.card_giftcard_outlined,
              color: Colors.white,
              size: 20,
            )),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 244, 129, 168),
                  const Color.fromARGB(255, 222, 95, 137),
                  Colors.pink,
                ])),
            child: Center(
                child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 20,
            )),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 244, 129, 168),
                  const Color.fromARGB(255, 222, 95, 137),
                  Colors.pink,
                ])),
            child: Center(
                child: Image.asset(
              'assets/images/off.png',
              width: 20,
              color: Colors.white,
            )),
          ),
        ],
      ),
    );
  }
}
