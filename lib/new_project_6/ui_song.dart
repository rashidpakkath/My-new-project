import 'package:flutter/material.dart';
import 'package:flutter_ui_2/controller/controler.dart';
import 'package:flutter_ui_2/new_project_6/ui_new.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MySongpage extends StatelessWidget {
  const MySongpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 530,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xFFf5a6dd),
                  Color(0xFFf5d9dd),
                  Colors.white,
                ])),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/malik.jpg'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ZAYN MALIK',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text('Love Like This'),
                          ],
                        ),
                        const SizedBox(
                          width: 190,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chevron_right,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 260,
                  width: 360,
                  child: Image.asset('assets/images/zayn.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '00:18:41',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '01:06:34',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                LinearPercentIndicator(
                  percent: 0.2,
                  progressColor: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(10, 40),
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MypageNewui(),
                                ));
                          },
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                          label: const Text(
                            'Play',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(
                        width: 95,
                      ),
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(10, 40),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.diamond,
                            color: Colors.black,
                          ),
                          label: const Text(
                            '756',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(10, 40),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove_red_eye_sharp,
                            color: Colors.black,
                          ),
                          label: const Text(
                            '56',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        child: const Icon(
                          Icons.bookmark,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 280,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 270, crossAxisSpacing: 10),
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  listItems[index].colorOne,
                                  listItems[index].colorTwo,
                                  listItems[index].colorThree
                                ]),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    listItems[index].number,
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text('MN'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                listItems[index].para,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 20,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundImage:
                              AssetImage(listItems[index].imageOne),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 35,
                      bottom: 20,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundImage:
                              AssetImage(listItems[index].imageTwo),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      bottom: 20,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundImage:
                              AssetImage(listItems[index].imageThree),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 30,
                        left: 100,
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 15,
                            ),
                            Text(listItems[index].count),
                            SizedBox(
                              width: 5,
                            ),
                            Text('People'),
                          ],
                        ))
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
