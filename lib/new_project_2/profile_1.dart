import 'package:flutter/material.dart';

class MyPro extends StatelessWidget {
  const MyPro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        height: 790,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60))),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 16, 4, 83),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60),
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.apps,
                                color: Colors.white,
                                size: 40,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              Text(
                                'Welcome Back!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 60,
                      child: Container(
                        width: 100,
                        height: 140,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: 1,
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(-2, 5))
                          ],
                          image: const DecorationImage(
                              image: AssetImage('assets/images/0.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      )),
                  const Positioned(
                      bottom: 70,
                      right: 40,
                      child: SizedBox(
                        width: 170,
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Hira .R',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '₹ 431,33',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Available Balance',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Activities',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromARGB(255, 16, 4, 83)),
                    ),
                    Text(
                      'Monthly Report',
                      style: TextStyle(
                          fontSize: 17, color: Color.fromARGB(255, 16, 4, 83)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 360,
              child: Stack(
                children: [
                  Positioned(
                      left: 135,
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 16, 4, 83),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child: Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Icon(
                            Icons.currency_rupee,
                            color: Colors.white,
                            size: 40,
                          ),
                        )),
                      )),
                  Positioned(
                      left: 25,
                      child: Container(
                        width: 160,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 16, 4, 83)),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Loan',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Pending',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              '₹ 323,45',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      right: 25,
                      top: 110,
                      child: Container(
                        width: 120,
                        height: 100,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 16, 4, 83),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Icon(
                            Icons.currency_exchange,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      )),
                  Positioned(
                      top: 0,
                      right: 25,
                      child: Container(
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 16, 4, 83)),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Convert',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Balance Doller',
                              style: TextStyle(fontSize: 15),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.attach_money,
                                  size: 25,
                                ),
                                Text(
                                  '518.61',
                                  style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      bottom: 50,
                      left: 25,
                      child: Container(
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 16, 4, 83),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 100),
                          child: Icon(
                            Icons.person_pin,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      left: 25,
                      child: Container(
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 16, 4, 83)),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 12),
                              child: Text(
                                "Transactions",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 105,
                              child: GridView(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisExtent: 30,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                ),
                                children: const [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/fread.webp'),
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/joss.jpeg'),
                                  ),
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/photo-1558962009-34fff2bd2e9b.jpeg'),
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/aleena.jpeg'),
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/al.jpeg'),
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/rose.jpg'),
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/kili.jpeg'),
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/hn.jpg'),
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/hn1.jpg'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      right: 135,
                      bottom: 0,
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 16, 4, 83),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Icon(
                            Icons.person_add,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      )),
                  Positioned(
                      right: 25,
                      bottom: 0,
                      child: Container(
                        width: 160,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 16, 4, 83)),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Refer Now',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Your Friendes',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              '300 Bonus',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
