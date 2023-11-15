import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_2/deposits.dart';
import 'package:flutter_ui_2/new_project_2/my_card.dart';
import 'package:flutter_ui_2/new_project_2/trancation.dart';
import 'package:flutter_ui_2/new_project_3/page_1.dart';

class MyDoller extends StatelessWidget {
  const MyDoller({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 7, 12, 85),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 90, left: 8, right: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    height: 720,
                    width: double.infinity,
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(22.0),
                        child: SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.chevron_left,
                                size: 45,
                              ),
                              CircleAvatar(
                                backgroundColor: Color.fromARGB(255, 7, 12, 85),
                                radius: 20,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PageOne(),
                                        ));
                                  },
                                  icon: Icon(Icons.add),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: TabBar(
                            labelStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            unselectedLabelStyle: TextStyle(
                              fontSize: 16,
                            ),
                            labelColor: Colors.black,
                            indicatorColor: Colors.white,
                            tabs: [
                              Tab(
                                text: 'My Cards',
                              ),
                              Tab(
                                text: 'Deposits',
                              ),
                              Tab(text: 'Transactions'),
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 570,
                        child: TabBarView(
                          children: [
                            MyCard(),
                            Deposits(),
                            Transation(),
                          ],
                        ),
                      )
                    ]),
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
