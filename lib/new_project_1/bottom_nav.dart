import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_1/homepage.dart';
import 'package:flutter_ui_2/new_project_1/items.dart';
import 'package:flutter_ui_2/new_project_1/profile.dart';

class MyNewapp extends StatefulWidget {
  const MyNewapp({super.key});

  @override
  State<MyNewapp> createState() => _MyNewappState();
}

class _MyNewappState extends State<MyNewapp> {
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
        children: [MyHomepage(), MyItems(), MyProfile()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          currentIndex: selected,
          onTap: (index) {
            controller.jumpToPage(index);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Category',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_3),
                label: 'Profile',
                backgroundColor: Colors.white),
          ]),
    );
  }
}
