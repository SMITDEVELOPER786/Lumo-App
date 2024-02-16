import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 234, 243, 210),
      // title: Text('Alert'),
      content: Container(
        height: 150,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Are you sure you want to end the live session',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Container(
                height: 40,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Yes,please',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffF5EC21),
                          Color(0xff119645),
                        ]))),
            Container(
              height: 40,
              width: double.infinity,
              child: Center(
                child: Text('Cancel',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Color(0xff119645))),
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff119645)),
                  borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
      actions: <Widget>[
        // TextButton(
        //   onPressed: () {
        //     // Close the dialog
        //     Navigator.of(context).pop();
        //   },
        //   child: Text('OK'),
        // ),
      ],
    );
  }
}
