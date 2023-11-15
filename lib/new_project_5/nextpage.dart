import 'package:flutter/material.dart';
import 'package:flutter_ui_2/controller/controler.dart';
import 'package:flutter_ui_2/new_project_6/ui_profile.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF233751),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Star'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2), label: 'Profile'),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    const Text(
                      'Goals',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyNewprofile(),
                              ));
                        },
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 700,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  itemCount: containerList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 200,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      color: containerList[index].color,
                      elevation: 0.2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [Icon(Icons.more_vert)],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image(
                                  image:
                                      AssetImage(containerList[index].image)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(containerList[index].name),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(containerList[index].subName)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
