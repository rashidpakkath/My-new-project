import 'package:flutter/material.dart';

import 'package:flutter_ui_2/new_project_2/doller.dart';
import 'package:flutter_ui_2/new_project_2/profile_1.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  int selected = 0;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            selected = index;
          });
        },
        children: const [
          MyPro(),
          MyDoller(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black12,
          elevation: 0,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          currentIndex: selected,
          onTap: (index) {
            controller.jumpToPage(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_rupee), label: "Money"),
          ]),
    );
  }
}
