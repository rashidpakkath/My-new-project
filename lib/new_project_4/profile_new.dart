import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_5/new_page.dart';
import 'package:flutter_ui_2/new_project_5/page_1.dart';

class MyProfilenew extends StatefulWidget {
  const MyProfilenew({super.key});

  @override
  State<MyProfilenew> createState() => _MyProfilenewState();
}

class _MyProfilenewState extends State<MyProfilenew> {
  bool light = true;
  bool lights = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF102e39),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 27,
                    backgroundColor: Color(0xFF313d44),
                    child: Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                  const Text(
                    'Bed Room',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xFF313d44),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MynewPage(),
                              ));
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 700,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 170,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF1e383e),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'OFF',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white38),
                              ),
                              Switch(
                                value: light,
                                activeColor:
                                    const Color.fromARGB(255, 108, 244, 54),
                                onChanged: (bool value) {
                                  setState(() {
                                    light = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.electric_meter,
                          color: Color(0xFF26f2f8),
                          size: 55,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Climate',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '0hr 16min',
                          style: TextStyle(color: Colors.white30),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFF3881d0), Color(0xFF4aef8d)])),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'ON',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white38),
                              ),
                              Switch(
                                value: lights,
                                activeColor:
                                    const Color.fromARGB(255, 244, 225, 54),
                                onChanged: (bool value) {
                                  setState(() {
                                    lights = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.square_foot,
                          color: Color.fromARGB(255, 248, 250, 250),
                          size: 55,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Fan',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '0hr 16min',
                          style: TextStyle(color: Colors.white30),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF3881d0), Color(0xFF4aef8d)]),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'ON',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white38),
                              ),
                              Switch(
                                value: lights,
                                activeColor:
                                    const Color.fromARGB(255, 212, 54, 244),
                                onChanged: (bool value) {
                                  setState(() {
                                    lights = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.electrical_services,
                          color: Color(0xFF26f2f8),
                          size: 55,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Charging',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '0hr 16min',
                          style: TextStyle(color: Colors.white30),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF1e383e),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'OFF',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white38),
                              ),
                              Switch(
                                value: light,
                                activeColor: Color.fromARGB(255, 17, 235, 216),
                                onChanged: (bool value) {
                                  setState(() {
                                    light = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.light,
                          color: Color(0xFF26f2f8),
                          size: 55,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Light',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '3hr 26min',
                          style: TextStyle(color: Colors.white30),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF1e383e),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'OFF',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white38),
                              ),
                              Switch(
                                value: light,
                                activeColor: Colors.red,
                                onChanged: (bool value) {
                                  setState(() {
                                    light = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.ac_unit,
                          color: Color(0xFF26f2f8),
                          size: 55,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'AC',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '8hr 32min',
                          style: TextStyle(color: Colors.white30),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
