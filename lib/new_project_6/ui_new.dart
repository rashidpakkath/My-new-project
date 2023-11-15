import 'package:flutter/material.dart';
import 'package:flutter_ui_2/controller/controler.dart';
import 'package:flutter_ui_2/new_project_7/ui_new_project.dart';

class MypageNewui extends StatefulWidget {
  const MypageNewui({super.key});

  @override
  State<MypageNewui> createState() => _MypageNewuiState();
}

class _MypageNewuiState extends State<MypageNewui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        'Ferniz',
                        style: TextStyle(fontFamily: 'sanju', fontSize: 23),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 12,
                      child: Icon(
                        Icons.bolt,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 155,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            minimumSize: const Size(10, 39),
                            backgroundColor: const Color(0xFfa8ff73)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyNewproject1(),
                              ));
                        },
                        child: const Text(
                          'Download',
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 231, 231),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(Icons.list),
                    )
                  ],
                ),
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height / 2.5,
                      width: MediaQuery.sizeOf(context).width / 1.05,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/qqqqqqq.png'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    const Positioned(
                        left: 50,
                        top: 15,
                        child: Column(
                          children: [
                            Text(
                              'Smart Financial Services',
                              style: TextStyle(
                                fontFamily: 'sanju',
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Give yourself a boost with Cash.At ultra-low \n monthly interest  rates its never been essier \n to fond the things that matter',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    Positioned(
                        left: 145,
                        top: 145,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                side: const BorderSide(
                                  width: 1,
                                  color: Colors.grey,
                                )),
                            onPressed: () {},
                            child: const Text(
                              'Claim Now',
                            ))),
                    Positioned(
                      bottom: 50,
                      child: SizedBox(
                        height: 50,
                        width: 390,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 40,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: CircleAvatar(
                                      radius: 17,
                                      backgroundColor: Color(0xFFc2ff9d),
                                      child: Icon(
                                        Icons.keyboard_double_arrow_up,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Apply Card',
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: CircleAvatar(
                                      radius: 17,
                                      backgroundColor: Color(0xFFc2ff9d),
                                      child: Icon(
                                        Icons.money,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'Deposits',
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      child: SizedBox(
                        height: 50,
                        width: 390,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 40,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: CircleAvatar(
                                      radius: 17,
                                      backgroundColor: Color(0xFFc2ff9d),
                                      child: Icon(
                                        Icons.verified,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Low Commision',
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: CircleAvatar(
                                      radius: 17,
                                      backgroundColor: Color(0xFFc2ff9d),
                                      child: Icon(
                                        Icons.restart_alt,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Send Money',
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 150,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: Image.asset('assets/images/1s.png'),
                        ),
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: Image.asset('assets/images/2s.png'),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: Image.asset('assets/images/3s.png'),
                        ),
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: Image.asset('assets/images/4s.png'),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 150,
                      height: 40,
                      child: Image.asset('assets/images/5s.png'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 170,
                child: Column(
                  children: [
                    Text(
                      'Eterprise-WideVisibility & \n protection',
                      style: TextStyle(
                        fontFamily: 'sanju',
                        fontSize: 26,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Keep everyone focused on the big picture,and let \n Ramp automate the rest expenses accounting \ncompliance and more ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 570,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 280,
                    mainAxisSpacing: 10,
                    // crossAxisSpacing: 10,
                  ),
                  itemCount: selcetitems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 210,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      selcetitems[index].image,
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            selcetitems[index].name,
                            style: const TextStyle(
                              fontFamily: 'sanju',
                              fontSize: 23,
                            ),
                          ),
                          Text(selcetitems[index].position)
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 160,
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.sizeOf(context).width / 1.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 224, 223, 223)),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 60,
                        ),
                        itemCount: selcetitems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selcetitems[index].isSelected =
                                      !selcetitems[index].isSelected;
                                });
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: selcetitems[index].isSelected
                                        ? const Color.fromARGB(
                                            255, 224, 223, 223)
                                        : Colors.white,
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      CircleAvatar(
                                        radius: 18,
                                        backgroundColor: Color(0xFFc2ff9d),
                                        child: Icon(
                                          selcetitems[index].icons,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        selcetitems[index].button,
                                        style: const TextStyle(fontSize: 16),
                                      )
                                    ],
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '12/12/2023',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: Container(
                  height: 150,
                  width: MediaQuery.sizeOf(context).width / 1.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFc2ff9d)),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Download Apps',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Download our application,and fill in your \n personal data.After that follow your\n registation process by filling in your \n information and waiting for verification',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
