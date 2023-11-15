import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_3/home.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                const SizedBox(
                  width: 400,
                  child: Center(
                    child: Text('Oxygen',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.green,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 20,
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset('assets/images/pngwing.com (3).png'),
                    )),
                Positioned(
                    bottom: 0,
                    right: 15,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/pngwing.com (4).png'),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 40,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Create Your Acoount',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Email or Phone Number",
                        fillColor: Colors.black12,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        fillColor: Colors.black12,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        fillColor: Colors.black12,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(330, 50)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                  },
                  child: const Text('Sing Up')),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 40,
            child: Column(
              children: [
                Text('-Or Sing up with-'),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.grey[100],
                  child: Image.asset('assets/images/pngwing.com (5).png'),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.grey[100],
                  child: Image.asset('assets/images/pngwing.com (6).png'),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.grey[100],
                  child: Image.asset('assets/images/rtyui.png'),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.grey[100],
                  child:
                      Image.asset('assets/images/pngwing.com (3) - Copy.png'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
