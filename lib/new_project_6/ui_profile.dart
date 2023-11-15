import 'package:flutter/material.dart';
import 'package:flutter_ui_2/controller/controler.dart';
import 'package:flutter_ui_2/new_project_6/ui_home.dart';
import 'package:flutter_ui_2/shapes/bottom_shape.dart';

class MyNewprofile extends StatefulWidget {
  const MyNewprofile({super.key});

  @override
  State<MyNewprofile> createState() => _MyNewprofileState();
}

class _MyNewprofileState extends State<MyNewprofile> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 450,
                child: Column(
                  children: [
                    SizedBox(
                      height: 400,
                      child: CustomPaint(
                        size: Size(
                            MediaQuery.sizeOf(context).width,
                            (MediaQuery.sizeOf(context).width * 1)
                                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                        painter: NewShape(),
                        child: const Center(
                          child: Text(
                            'Welcome',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                  bottom: 40,
                  left: 163,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/al.jpeg'),
                  ))
            ],
          ),
          SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Select your mother tongue',
                  style: TextStyle(fontSize: 18),
                ),
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/images/en.png'),
                      ),
                      const Text(
                        'English',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFFa462dd)),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 40,
                      )
                    ],
                  ),
                ),
                const Text(
                  'What do you want to learn?',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: selectItem.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 110,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(color: Colors.black26, blurRadius: 5.0)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image:
                                            AssetImage(selectItem[index].image),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  selectItem[index].name,
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.black54),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Transform.scale(
                                  scale: 1.4,
                                  child: Checkbox(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    activeColor: Colors.white,
                                    checkColor: Colors.black,
                                    value: value,
                                    onChanged: (value) {
                                      setState(() {
                                        this.value = value!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFa462dd),
                  minimumSize: Size(100, 35),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewHomepage(),
                    ));
              },
              child: Text(
                'Start',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ))
        ],
      ),
    );
  }
}
