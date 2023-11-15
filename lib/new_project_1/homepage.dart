import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_1/bedroom.dart';
import 'package:flutter_ui_2/new_project_1/profile.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 130,
            child: Center(
              child: Text(
                "SHOP INTERIOR",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'POPULAR DESIGNERS',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.purple,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/al.jpeg'),
                          ),
                        ),
                        Text(
                          'ALEX',
                        )
                      ],
                    )),
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.teal,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/aleena.jpeg'),
                          ),
                        ),
                        Text(
                          'ALEENA',
                        )
                      ],
                    )),
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.indigo,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/fread.webp'),
                          ),
                        ),
                        Text(
                          'FRED',
                        )
                      ],
                    )),
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.cyan,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                                'assets/images/photo-1558962009-34fff2bd2e9b.jpeg'),
                          ),
                        ),
                        Text(
                          'JANCY',
                        )
                      ],
                    )),
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 43,
                          backgroundColor: Color.fromARGB(255, 239, 68, 255),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/jhon.avif'),
                          ),
                        ),
                        Text(
                          'JHON',
                        )
                      ],
                    )),
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.green,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/joss.jpeg'),
                          ),
                        ),
                        Text(
                          'JOS',
                        )
                      ],
                    )),
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/kili.jpeg'),
                          ),
                        ),
                        Text(
                          'MARIA',
                        )
                      ],
                    )),
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.lightBlue,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/rose.jpg'),
                          ),
                        ),
                        Text(
                          'ROCY',
                        )
                      ],
                    )),
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.amber,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/images.jpeg'),
                          ),
                        ),
                        Text(
                          'ZOYA',
                        )
                      ],
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'TOP DESIGN',
                    style: TextStyle(
                        fontSize: 20,
                        // fontWeight: FontWeight.w600,
                        fontFamily: 'sanju'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 310,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 210,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/i1.jpeg'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 210,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/i2.jpg'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 210,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/i3.jpeg'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 210,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/i4.jpg'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'POPULAR COMPANIES',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/hhh.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      const Text('HIRSCH BEDNER')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/hhh1.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      const Text('WILSN ASSOCIAT')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/hhh3.webp'),
                                fit: BoxFit.cover)),
                      ),
                      const Text('EWINGCOLE')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/hh4.webp'),
                                fit: BoxFit.cover)),
                      ),
                      const Text('CBT ACHITECTS')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/hh3.webp'),
                                fit: BoxFit.cover)),
                      ),
                      const Text('GENSLER')
                    ],
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
