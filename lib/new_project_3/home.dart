import 'package:flutter/material.dart';
import 'package:flutter_ui_2/shapes/bottom_shape.dart';
import 'package:flutter_ui_2/new_project_4/new_one.dart';
import 'package:flutter_ui_2/new_project_4/profile_new.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomPaint(
              size: Size(
                  MediaQuery.sizeOf(context).width,
                  (MediaQuery.sizeOf(context).width * 0.375)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: AppBarshape(),
              child: Center(
                child: SizedBox(
                  height: 150,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyPagetwo(),
                                  ));
                            },
                            icon: const Icon(
                              Icons.sort,
                              size: 30,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'My Profile',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(
                          width: 160,
                        ),
                        const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 25,
                        ),
                        const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 25,
                        ),
                        const CircleAvatar(
                          radius: 13,
                          backgroundImage:
                              AssetImage('assets/images/aleena.jpeg'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 220,
              child: Column(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage:
                            AssetImage('assets/images/aleena.jpeg'),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 65,
                            height: 22,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 11, 2, 88),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: const Center(
                              child: Text(
                                'Follow',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Madeleine Penelope',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'UI/UX Designar',
                    style: TextStyle(color: Colors.black38, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.blue,
                                width: 3,
                              )),
                          child: const Center(
                            child: Icon(
                              Icons.group_add,
                              color: Colors.blue,
                              size: 35,
                            ),
                          ),
                        ),
                        const Text('FOLLOWING'),
                        const Text(
                          '364',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: const Color.fromARGB(255, 243, 33, 156),
                                width: 3,
                              )),
                          child: const Center(
                            child: Icon(
                              Icons.groups,
                              color: Color.fromARGB(255, 243, 33, 156),
                              size: 35,
                            ),
                          ),
                        ),
                        const Text('FOLLOWERS'),
                        const Text(
                          '666',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: const Color.fromARGB(255, 214, 200, 7),
                                width: 3,
                              )),
                          child: const Center(
                            child: Icon(
                              Icons.group,
                              color: Color.fromARGB(255, 214, 200, 7),
                              size: 35,
                            ),
                          ),
                        ),
                        const Text('FRIENDS'),
                        const Text(
                          '234',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black12),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 35,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromARGB(255, 16, 2, 92)),
                          child: const Center(
                            child: Text(
                              'Gallery',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromARGB(255, 255, 254, 255)),
                          child: const Center(
                            child: Text(
                              'Designs',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromARGB(255, 255, 254, 255)),
                          child: const Center(
                            child: Text(
                              'Tempioter',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromARGB(255, 255, 254, 255)),
                          child: const Center(
                            child: Text(
                              'Collection',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisExtent: 100,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage('assets/images/1111.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/111111.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/000000000000000.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/000000000000.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/00000.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage('assets/images/0000.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/0000000.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/00000.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/1111111.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: CustomPaint(
        size: Size(
            MediaQuery.sizeOf(context).width,
            (MediaQuery.sizeOf(context).width * 0.25)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: BottomShape(),
      ),
    );
  }
}
