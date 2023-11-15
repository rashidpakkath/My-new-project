import 'package:flutter/material.dart';
import 'package:flutter_ui_2/shapes/bottom_shape.dart';
import 'package:flutter_ui_2/new_project_5/nextpage.dart';
import 'dart:math' as math;

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class NewPagenew extends StatelessWidget {
  const NewPagenew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 510,
              child: SizedBox(
                height: 400,
                width: 420,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(
                          MediaQuery.sizeOf(context).width,
                          (MediaQuery.sizeOf(context).width * 1)
                              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: Pagenew(),
                    ),
                    const Positioned(
                        top: 120,
                        child: CircleAvatar(
                          radius: 90,
                          backgroundColor: Color(0xFFffb828),
                        )),
                    const Positioned(
                      right: 0,
                      top: 120,
                      child: CircleAvatar(
                        radius: 90,
                        backgroundColor: Color(0xFFffb828),
                      ),
                    ),
                    Positioned(
                        left: 25,
                        top: 130,
                        child: SizedBox(
                          height: 200,
                          width: 210,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Spanish',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: 140,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Begginer',
                                      style: TextStyle(
                                          color: Color(0xFFffb828),
                                          fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.keyboard_double_arrow_down,
                                      color: Color(0xFFffb828),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 210,
                                height: 70,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Transform.rotate(
                                      angle: math.pi / -4.2,
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        color: const Color.fromARGB(
                                            255, 247, 59, 74),
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: math.pi / -4.2,
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        color: const Color.fromARGB(
                                            255, 247, 59, 74),
                                      ),
                                    ),
                                    const Text(
                                      '2 Masseges',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                    Positioned(
                        right: 40,
                        top: 160,
                        child: CircularPercentIndicator(
                          backgroundColor: Colors.white30,
                          backgroundWidth: 3,
                          lineWidth: 4.0,
                          radius: 100,
                          progressColor: Colors.white,
                          percent: 0.4,
                          center: const Text(
                            '43%',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        )),
                    Positioned(
                        left: 30,
                        bottom: 0,
                        child: Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: Offset(1, 5),
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 1,
                                          blurRadius: 5)
                                    ]),
                                child: const Center(
                                  child: Icon(
                                    Icons.book,
                                    color: Color(0xFFffb828),
                                    size: 35,
                                  ),
                                ),
                              ),
                              const Text('Basics'),
                              const Text('4/5'),
                              LinearPercentIndicator(
                                percent: 0.8,
                                progressColor: const Color(0xFFffb828),
                              )
                            ],
                          ),
                        )),
                    Positioned(
                        right: 30,
                        bottom: 0,
                        child: Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: Offset(1, 5),
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 1,
                                          blurRadius: 5)
                                    ]),
                                child: const Center(
                                  child: Icon(
                                    Icons.card_giftcard,
                                    color: Color(0xFFf54050),
                                    size: 35,
                                  ),
                                ),
                              ),
                              const Text('Decretions'),
                              const Text('1/5'),
                              LinearPercentIndicator(
                                percent: 0.2,
                                progressColor: const Color(0xFFf54050),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 340,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 1,
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(1, 5),
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 1,
                                        blurRadius: 5)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.messenger,
                                  color: Color(0xFF2093d9),
                                  size: 35,
                                ),
                              ),
                            ),
                            const Text('Conversation'),
                            const Text('3/5'),
                            LinearPercentIndicator(
                              percent: 0.6,
                              progressColor: const Color(0xFF2093d9),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 1,
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(1, 5),
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 1,
                                        blurRadius: 5)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.location_pin,
                                  color: Color(0xFF15c258),
                                  size: 35,
                                ),
                              ),
                            ),
                            const Text('Places'),
                            const Text('1/5'),
                            LinearPercentIndicator(
                              percent: 0.2,
                              progressColor: const Color(0xFF15c258),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 1,
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(1, 5),
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 1,
                                        blurRadius: 5)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.group,
                                  color: Color.fromARGB(255, 182, 7, 252),
                                  size: 35,
                                ),
                              ),
                            ),
                            const Text('Family'),
                            const Text('3/5'),
                            LinearPercentIndicator(
                              percent: 0.6,
                              progressColor:
                                  const Color.fromARGB(255, 182, 7, 252),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 1,
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(1, 5),
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 1,
                                        blurRadius: 5)
                                  ]),
                              child: Center(
                                  child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NewHomePage(),
                                      ));
                                },
                                icon: const Icon(
                                  Icons.food_bank,
                                  color: Color(0xFF0052c4),
                                  size: 35,
                                ),
                              )),
                            ),
                            const Text('foods'),
                            const Text('2/5'),
                            LinearPercentIndicator(
                              percent: 0.4,
                              progressColor: const Color(0xFF0052c4),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
