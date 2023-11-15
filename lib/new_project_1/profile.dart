import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_2/bottom_nav_2.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 310,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/bk1.jpg'),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                  bottom: 0,
                  right: 10,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/hn1.jpg'),
                            fit: BoxFit.cover),
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        )),
                  ),
                ),
                const Positioned(
                    top: 120,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'ALEXANDER',
                          style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          'VICKY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    )),
                Positioned(
                    bottom: 0,
                    right: 18,
                    child: Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 3),
                          color: Colors.black),
                      child: const Center(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 178, 240, 248),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 33,
                      ),
                      Text(
                        'Favorite',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 178, 248),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bookmark,
                        size: 33,
                      ),
                      Text(
                        'Saved',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 200, 178),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.share,
                        size: 33,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 235, 248, 178),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        size: 33,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(6.0),
            child: Card(
              child: ListTile(
                  title: Text(
                    'E-MAIL',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'alexander22@gmail.com',
                    style: TextStyle(fontSize: 17),
                  ),
                  minLeadingWidth: 70,
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 35,
                    ),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(6.0),
            child: Card(
              child: ListTile(
                  title: Text(
                    'PHONE',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '+1 415 111 2312',
                    style: TextStyle(fontSize: 17),
                  ),
                  minLeadingWidth: 70,
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 35,
                    ),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(6.0),
            child: Card(
              child: ListTile(
                  title: Text(
                    'COUNTRY',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'USA',
                    style: TextStyle(fontSize: 17),
                  ),
                  minLeadingWidth: 70,
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Icon(
                      Icons.my_location,
                      color: Colors.white,
                      size: 35,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Card(
              child: ListTile(
                title: const Text(
                  'CITY',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'NEW YORK',
                  style: TextStyle(fontSize: 17),
                ),
                minLeadingWidth: 70,
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyProject()),
                      );
                    },
                    icon: const Icon(
                      Icons.location_city,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
