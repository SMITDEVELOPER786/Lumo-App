import 'package:flutter/material.dart';

class VipImageTextWidget extends StatelessWidget {
  String image,title;
   VipImageTextWidget({Key? key,required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.25,
      height: 70,
      child: Column(
        children: [
        Image.asset(image),
        Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 10),)
      ],),
    );
  }
}