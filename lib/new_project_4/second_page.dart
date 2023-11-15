import 'package:flutter/material.dart';
import 'package:flutter_ui_2/shapes/bottom_shape.dart';
import 'package:flutter_ui_2/new_project_4/profile_new.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0e2c36),
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
                    child: Icon(Icons.apps),
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.yellow,
                      ],
                    ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: const Text(
                      'ProHome',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 27,
                    backgroundColor: Color(0xFF313d44),
                    backgroundImage: AssetImage('assets/images/one.png'),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 340,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color(0xFF28454b)),
                  ),
                ),
                Positioned(
                    left: 130,
                    child: SizedBox(
                      width: 100,
                      height: 80,
                      child: Image.asset('assets/images/moon.png'),
                    )),
                Positioned(
                    left: 70,
                    top: 10,
                    child: SizedBox(
                      width: 135,
                      height: 125,
                      child: Image.asset('assets/images/cloud.png'),
                    )),
                Positioned(
                    left: 90,
                    top: 75,
                    child: SizedBox(
                      width: 75,
                      height: 105,
                      child: Image.asset('assets/images/liiff.png'),
                    )),
                Positioned(
                    right: 80,
                    top: 145,
                    child: SizedBox(
                      width: 105,
                      height: 105,
                      child: Image.asset('assets/images/sun.png'),
                    )),
                const Positioned(
                    bottom: 80,
                    left: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Heavy Rain',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Tonight',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        )
                      ],
                    )),
                const Positioned(
                    right: 80,
                    top: 70,
                    child: Column(
                      children: [
                        Text(
                          '27℃',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontFamily: 'sanju'),
                        ),
                        Text(
                          'Feels Like 32℃',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: Center(
              child: Container(
                height: 120,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFF3881d0), Color(0xFF4aef8d)])),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Energy',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '16.4 kwh',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '3 Device Turn On',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (Rect bounds) => const RadialGradient(
                          center: Alignment.topCenter,
                          stops: [1, .7],
                          colors: [
                            Color.fromARGB(255, 205, 42, 238),
                            Color.fromARGB(255, 236, 4, 198),
                          ],
                        ).createShader(bounds),
                        child: const Icon(
                          Icons.bolt,
                          size: 45,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 40,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Devices',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'sanju',
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '(25)',
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                )
              ],
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF182f37),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.light,
                            color: Color(0xFF26f2f8),
                            size: 45,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Light',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'x3 Devices',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF182f37),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.ac_unit,
                            color: Color(0xFF26f2f8),
                            size: 45,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'A/C',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'x3 Devices',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF182f37),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.electric_meter,
                            color: Color(0xFF26f2f8),
                            size: 45,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Climate',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'x3 Devices',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 10),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 173,
                child: Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.yellow, Color(0xFFff6277)])),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyProfilenew(),
                              ));
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 35,
                          color: Colors.white,
                        ))),
              )
            ],
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: CustomPaint(
        size: Size(
            MediaQuery.sizeOf(context).width,
            (MediaQuery.sizeOf(context).width * 0.17)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: NewPage(),
        // child: BottomNavigationBar(
        //     selectedItemColor: Colors.black,
        //     unselectedItemColor: Colors.black,
        //     items: [
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
        //     ]),
      ),
    );
  }
}
