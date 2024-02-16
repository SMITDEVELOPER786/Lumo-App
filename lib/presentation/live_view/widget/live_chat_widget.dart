import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/presentation/live_view/widget/bottom_sheet_widget.dart';


class LiveChatWidget extends StatelessWidget {
  const LiveChatWidget({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(121, 0, 0, 0),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffFFB61D),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          '45',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    Container(
                      width: 200,
                      child: Text.rich(TextSpan(
                          text: 'John:',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: <InlineSpan>[
                            TextSpan(
                              text:
                                  ' Hi, send me your digit so we can text some otheer time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ])),
                    ),
                    // Text(
                    //   'John:',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white),
                    // ),
                    // Text(
                    //   'John: Hi, send me your digit so we can text some otheer time',
                    //   style: TextStyle(color: Colors.white),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(121, 0, 0, 0),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xff38B6FF),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          '16',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    Container(
                      width: 200,
                      child: Text.rich(TextSpan(
                          text: 'John:',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: <InlineSpan>[
                            TextSpan(
                              text:
                                  ' Hi, send me your digit so we can text some otheer time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ])),
                    ),
                    // Text(
                    //   'John:',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white),
                    // ),
                    // Text(
                    //   'John: Hi, send me your digit so we can text some otheer time',
                    //   style: TextStyle(color: Colors.white),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  // color: Color.fromARGB(121, 0, 0, 0),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffF5EC21),
                        Color(0xff119645),
                      ]),
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(color: Color(0xffFFB61D))
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffFFB61D),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          '45',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    Container(
                      width: 200,
                      child: Text.rich(TextSpan(
                          text: 'John:',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: <InlineSpan>[
                            TextSpan(
                              text:
                                  ' Hi, send me your digit so we can text some otheer time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ])),
                    ),
                    // Text(
                    //   'John:',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white),
                    // ),
                    // Text(
                    //   'John: Hi, send me your digit so we can text some otheer time',
                    //   style: TextStyle(color: Colors.white),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(121, 0, 0, 0),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xff9747FF),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          '45',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    Container(
                      width: 200,
                      child: Text.rich(TextSpan(
                          text: 'John:',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: <InlineSpan>[
                            TextSpan(
                              text:
                                  ' Hi, send me your digit so we can text some otheer time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ])),
                    ),
                    // Text(
                    //   'John:',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.white),
                    // ),
                    // Text(
                    //   'John: Hi, send me your digit so we can text some otheer time',
                    //   style: TextStyle(color: Colors.white),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(121, 0, 0, 0),
                          borderRadius: BorderRadius.circular(20)),
                      child: Image(
                        image: AssetImage('assets/images/messages.png'),
                        height: 20,
                      )),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return BottomSheetWidget();
                        },
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(121, 0, 0, 0),
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage('assets/images/element-3.png'))),
                  ),
                  Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(121, 0, 0, 0),
                          borderRadius: BorderRadius.circular(20)),
                      child: Image(
                          image:
                              AssetImage('assets/images/user-cirlce-add.png'))),
                  // Container(
                  //   padding: EdgeInsets.all(15),
                  //   decoration: BoxDecoration(
                  //       color: Color.fromARGB(121, 0, 0, 0),
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: Image(
                  //       image:
                  //           AssetImage('assets/images/SpeakerSimpleSlash.png')),
                  // ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
