import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_1/bathroom.dart';
import 'package:flutter_ui_2/new_project_1/bedroom.dart';
import 'package:flutter_ui_2/new_project_1/dining.dart';
import 'package:flutter_ui_2/new_project_1/kitchen.dart';
import 'package:flutter_ui_2/new_project_1/living.dart';

class MyItems extends StatelessWidget {
  const MyItems({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'CATEGORY',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: PageScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 400,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/images/s1.jpg'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 170,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'LIVING',
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 400,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/s6.jpg'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 170,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'DINING',
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 400,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/images/s3.jpg'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 170,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'BED ROOM',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 400,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/images/s4.jpg'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 170,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'KITCHEN',
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 400,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/images/s7.jpg'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 170,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'BATH ROOM',
                                  style: TextStyle(
                                      fontSize: 29, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 30,
              child: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(text: 'Living'),
                    Tab(text: 'Dining'),
                    Tab(text: 'Bedroom'),
                    Tab(text: 'Kitchen'),
                    Tab(text: 'Bathroom'),
                  ]),
            ),
            const SizedBox(
              height: 700,
              child: TabBarView(children: [
                Living(),
                Dining(),
                Bedroom(),
                Kitchen(),
                Bathroom()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
