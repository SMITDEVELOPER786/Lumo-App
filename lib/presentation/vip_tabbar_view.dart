import 'package:flutter/material.dart';

import 'vip1_view/vip1_view.dart';
import 'vip2_view/vip2_view.dart';
import 'vip4_view/vip4_view.dart';
import 'vip5_view/vip5_view.dart';
import 'vip3_view/vip3_view.dart';
import 'vip6_view/vip6_view.dart';
import 'vip7_view/vip7_view.dart';
import 'vip_max_view/vip_max_view.dart';




class VipTabbarView extends StatelessWidget {
  const VipTabbarView({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        // appBar:
        body: Stack(
          children: [
            Image(
              image: AssetImage('assets/images/sec last.png'),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Image(
              image: AssetImage('assets/images/last.png'),
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Image(
              image: AssetImage('assets/images/third last.png'),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Image(
              image: AssetImage('assets/images/Last.jpg'),
              width: double.infinity,
              // fit: BoxFit.cover,
            ),
            Image(
              image: AssetImage('assets/images/ton11.png'),
              width: double.infinity,
              // fit: BoxFit.cover,
            ),
            // Container(
            //     width: double.infinity,
            //     height: double.infinity,
            //     color: Color.fromARGB(51, 255, 191, 0)),
            // Container(
            //     width: double.infinity,
            //     height: double.infinity,
            //     color: Color.fromARGB(51, 0, 0, 0)),
            // Image(
            //   image: AssetImage('assets/images/top1.png'),
            //   width: double.infinity,
            //   // fit: BoxFit.cover,
            // ),
            Container(
              height: 140,
              child: AppBar(
                backgroundColor: Colors.transparent,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'VIP',
                  style: TextStyle(color: Colors.white),
                ),
                elevation: 0,
                centerTitle: true,
                bottom: TabBar(
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    // indicatorColor: Colors.transparent,

                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xffF5EC21),
                              Color(0xff119645),
                            ])),
                    // unselectedLabelStyle: TextStyle(color: Colors.grey),

                    tabs: [
                      Tab(
                        height: 30,
                        child: Container(
                          height: 20,
                          width: 70,
                          child: Center(
                              child: Text(
                            'VIP 1',
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                      Tab(
                        height: 30,
                        child: Container(
                          height: 20,
                          width: 70,
                          child: Center(
                              child: Text('VIP 2',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      Tab(
                        height: 30,
                        child: Container(
                          height: 20,
                          width: 70,
                          child: Center(
                              child: Text('VIP 3',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      Tab(
                        height: 30,
                        child: Container(
                          height: 20,
                          width: 70,
                          child: Center(
                              child: Text('VIP 4',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      Tab(
                        height: 30,
                        child: Container(
                          height: 20,
                          width: 70,
                          child: Center(
                              child: Text('VIP 5',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      Tab(
                        height: 30,
                        child: Container(
                          height: 20,
                          width: 70,
                          child: Center(
                              child: Text('VIP 6',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      Tab(
                        height: 30,
                        child: Container(
                          height: 20,
                          width: 70,
                          child: Center(
                              child: Text('VIP 7',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      Tab(
                        height: 30,
                        child: Container(
                          height: 20,
                          width: 70,
                          child: Center(
                              child: Text('VIP Max',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      // Tab(text: 'VIP 2',),
                      // Tab(text: 'VIP 3',),
                      // Tab(text: 'VIP 4',),
                      // Tab(text: 'VIP 5',),
                      // Tab(text: 'VIP 6',),
                      // Tab(text: 'VIP 7',),
                      // Tab(text: 'VIP Max',),
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(top: 140),
                width: double.infinity,
                child:  TabBarView(children: [
                  Vip1View(),
                  Vip2View(),
                  Vip3View(),
                  Vip4View(),
                  Vip5View(),
                  Vip6View(),
                  Vip7View(),
                  VipMaxView()
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
