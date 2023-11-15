import 'package:flutter/material.dart';
import 'package:flutter_ui_2/controller/controler.dart';
import 'dart:math' as math;

import 'package:flutter_ui_2/new_project_5/new_page.dart';

class MynewPage extends StatelessWidget {
  const MynewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 540,
              child: Stack(
                children: [
                  Container(
                    height: 500,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/background-shape.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      bottom: 50,
                      child: SizedBox(
                        width: 400,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/aleena.jpeg'),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Penelope Watson',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    'Graphic Designer',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xFFfb234c)),
                                child: const Center(
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  const Positioned(
                      bottom: 10,
                      left: 30,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'FRIENDS',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 15),
                              ),
                              Text(
                                '2341',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 45,
                          ),
                          Column(
                            children: [
                              Text(
                                'FOLLOWING',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 15),
                              ),
                              Text(
                                '314',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 45,
                          ),
                          Column(
                            children: [
                              Text(
                                'FOLLOWERS',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 15),
                              ),
                              Text(
                                '241',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageSelect.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage:
                              AssetImage(imageSelect[index].imageUse),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 500,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 450,
                      width: 70,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Colors.black26,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Transform.rotate(
                            angle: math.pi / -2.0,
                            child: const Text(
                              'Banner',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: math.pi / -2.0,
                            child: const Text(
                              'Tomanas',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: math.pi / -2.0,
                            child: const Text(
                              'Designs',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: math.pi / -2.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(10, 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  backgroundColor: const Color(0xFFf6d401)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NewPagenew(),
                                    ));
                              },
                              child: const Text(
                                'Gallery',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 340,
                      height: 480,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 340,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'About Garrett Wotson',
                                    style: TextStyle(
                                      fontFamily: 'sanju',
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'I am a UI/UX Designer for mobile phone who has check powerful pixel and this perfect designs',
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 380,
                            width: 340,
                            // color: Colors.black,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 360,
                                  width: 160,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 110,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/cool.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                      Container(
                                        height: 110,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/cool2.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                      Container(
                                        height: 110,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/cool5.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 360,
                                  width: 160,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 170,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/cool3.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                      Container(
                                        height: 170,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/cool4.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
