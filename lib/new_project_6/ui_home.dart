import 'package:flutter/material.dart';
import 'package:flutter_ui_2/controller/controler.dart';
import 'package:flutter_ui_2/new_project_6/ui_song.dart';
import 'package:flutter_ui_2/shapes/bottom_shape.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class NewHomepage extends StatelessWidget {
  const NewHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/images/joss.jpeg'),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    Stack(
                      children: [
                        const SizedBox(
                          height: 70,
                          width: 130,
                        ),
                        const Positioned(
                            right: 0,
                            top: 7,
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor:
                                  Color.fromARGB(255, 223, 221, 221),
                              child: Icon(
                                Icons.apps,
                                color: Colors.black,
                              ),
                            )),
                        Positioned(
                          top: 7,
                          left: 30,
                          child: Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    width: 1,
                                    color:
                                        const Color.fromARGB(255, 46, 45, 45)),
                              ),
                              child: const Icon(Icons.notifications)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 270,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Hello,',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          'Max!',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Look at your project.',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 45,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border:
                                  Border.all(width: 1, color: Colors.black)),
                          child: const Center(
                              child: Text(
                            'Ongonig & Future (6)',
                            style: TextStyle(fontSize: 16),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 45,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border:
                                  Border.all(width: 1, color: Colors.black)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'High priority',
                                style: TextStyle(fontSize: 16),
                              ),
                              CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.stacked_line_chart,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 45,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                      width: 1, color: Colors.black)),
                              child: const Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Created by:Max,Jess',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ],
                              ),
                            ),
                            const Positioned(
                                right: 35,
                                top: 5,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage:
                                      AssetImage('assets/images/aleena.jpeg'),
                                )),
                            const Positioned(
                                right: 5,
                                top: 5,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage:
                                      AssetImage('assets/images/joss.jpeg'),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border:
                                  Border.all(width: 1, color: Colors.black)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.edit_outlined),
                              Text(
                                'New project',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey[300],
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MySongpage(),
                                    ));
                              },
                              icon: const Icon(
                                Icons.wifi,
                                color: Colors.black,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 480,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: selecteData.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Color(0xFFebebeb),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: CustomPaint(
                                size: Size(
                                    MediaQuery.sizeOf(context).width,
                                    (MediaQuery.sizeOf(context).width * 0.25)
                                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                                painter: ContainerShap(
                                    shapeColor:
                                        index.isOdd ? Color(0xFF383838) : null),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color:
                                                    selecteData[index].border,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Image.asset(
                                                  'assets/images/wait.png',
                                                  color:
                                                      selecteData[index].border,
                                                  height: 20,
                                                ),
                                                Text(
                                                  selecteData[index].head,
                                                  style: TextStyle(
                                                      color: selecteData[index]
                                                          .border),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          CircleAvatar(
                                            radius: 16,
                                            backgroundColor:
                                                selecteData[index].border,
                                            child: Icon(
                                              Icons.stacked_line_chart,
                                              color: selecteData[index].color,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundImage: AssetImage(
                                                selecteData[index].images),
                                            backgroundColor: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 250,
                                            height: 50,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 7),
                                                  child: Text(
                                                    selecteData[index].title,
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            selecteData[index]
                                                                .border),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                LinearPercentIndicator(
                                                  percent:
                                                      selecteData[index].value,
                                                  progressColor:
                                                      selecteData[index].border,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                right: 10,
                                top: 60,
                                child: Icon(
                                  Icons.more_horiz,
                                  color: selecteData[index].border,
                                )),
                            Positioned(
                              right: 15,
                              top: 15,
                              child: Row(
                                children: [
                                  const Text(
                                    'Created by ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    selecteData[index].name,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                selecteData[index].image),
                                            fit: BoxFit.cover)),
                                  ),
                                  const CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
