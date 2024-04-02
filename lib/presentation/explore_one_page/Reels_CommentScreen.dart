import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class ReelsComments extends StatefulWidget {
  final commentsData;
  const ReelsComments({Key? key, this.commentsData}) : super(key: key);

  @override
  State<ReelsComments> createState() => _ReelsCommentsState();
}

class _ReelsCommentsState extends State<ReelsComments> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 167, 255, 170),
        appBar: AppBar(
          title: Text("Comments", style: TextStyle(color: Colors.black)),
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
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: widget.commentsData.length,
                itemBuilder: (context, index) {
                  print(widget.commentsData.length);
                  
                  return widget.commentsData.length != 0
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    )),
                                child: ListTile(
                                  title: Text(widget.commentsData[index]
                                          ["comment"]
                                      .toString()),
                                  // Add more details as needed
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "0 Likes",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "0 Comments",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      : Text(
                          "No Comments",
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        );
                })
          ],
        ),
      ),
    );
  }
}
