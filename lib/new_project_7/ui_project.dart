import 'package:flutter/material.dart';
import 'package:flutter_ui_2/controller/controler.dart';
import 'package:flutter_ui_2/new_project_7/ui_page.dart';
import 'package:flutter_ui_2/shapes/bottom_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class MyUipage extends StatefulWidget {
  const MyUipage({super.key});

  @override
  State<MyUipage> createState() => _MyUipageState();
}

class _MyUipageState extends State<MyUipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf7f7f9),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MypageFor(),
                            ));
                      },
                      icon: const Icon(
                        Icons.sort,
                        size: 30,
                      ),
                    ),
                  ),
                  Text(
                    'Explore',
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                  const Icon(Icons.shopping_bag)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 320,
                    height: 50,
                    child: TextField(
                        decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      labelText: "looking for shoes",
                      labelStyle: GoogleFonts.raleway(
                          textStyle: TextStyle(color: Colors.black)),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFF0d6efd),
                      ),
                      child: Image.asset(
                        'assets/images/icons8-adjust-48.png',
                        height: 20,
                        width: 30,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Select Category',
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: shoppingList.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          shoppingList[index].isSelected =
                              !shoppingList[index].isSelected;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 45,
                          width: 120,
                          decoration: BoxDecoration(
                            color: shoppingList[index].isSelected
                                ? Colors.blue
                                : Colors.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Center(
                              child: Text(
                            shoppingList[index].category,
                            style: TextStyle(
                              fontSize: 17,
                              color: shoppingList[index].isSelected
                                  ? const Color.fromARGB(255, 245, 247, 248)
                                  : const Color.fromARGB(255, 17, 16, 16),
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Popular Shoes',
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  Text('See all',
                      style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                              fontSize: 15, color: Color(0xFF0d6efd))))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 285,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 265, crossAxisSpacing: 10),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(shoppingList[index].icon),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          height: 120,
                          child: Image.asset(shoppingList[index].image),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'BEST SELLER',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text(
                                    shoppingList[index].name,
                                    style: GoogleFonts.poppins(
                                        textStyle:
                                            const TextStyle(fontSize: 17)),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        shoppingList[index].price,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 70),
                                        child: Container(
                                          width: 35,
                                          height: 43,
                                          decoration: const BoxDecoration(
                                              color: Color(0xFF0d6efd),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10))),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'New Arrivals',
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  Text('See all',
                      style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                              fontSize: 15, color: Color(0xFF0d6efd))))
                ],
              ),
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width / 1.1,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: GoogleFonts.raleway(
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w600)),
                            ),
                            const Text(
                              '15 % OFF',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xFF674ec6),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'sanju'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 15,
                top: -0,
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      'assets/images/shoes.png',
                      fit: BoxFit.fill,
                    )),
              ),
              Positioned(
                  top: 50,
                  left: 230,
                  child: Transform.rotate(
                    angle: -math.pi / 5,
                    child: Text(
                      'NEW!',
                      style: GoogleFonts.caveat(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          )
        ]),
      ),
      // extendBody: true,
      bottomNavigationBar: Stack(
        children: [
          CustomPaint(
            size: Size(
                MediaQuery.sizeOf(context).width,
                (MediaQuery.sizeOf(context).width * 0.25)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: NewBottomshape(),
            child: const SizedBox(
              width: 420,
              height: 100,
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Color(0xFF0d6efd),
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.person_2_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: 175,
              top: 5,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(2, 5),
                        blurRadius: 5,
                        color: Color(0xFF0d6efd))
                  ],
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFF0d6efd),
                ),
                child: const Icon(Icons.shopping_bag,
                    color: Colors.white, size: 25),
              ))
        ],
      ),
    );
  }
}
