import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_3/home.dart';
import 'package:flutter_ui_2/new_project_3/page_3.dart';

class PageTwo extends StatelessWidget {
  PageTwo({super.key});
  final _emailControler = TextEditingController();
  final _passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      'Login to Your Acoount',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 170,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _emailControler,
                      decoration: InputDecoration(
                        labelText: "User Name",
                        fillColor: Colors.black12,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _passwordControler,
                      decoration: InputDecoration(
                          labelText: "Password",
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
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Forget Password',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, minimumSize: Size(360, 50)),
                onPressed: () {
                  singIn(context);
                },
                child: const Text('Sing In')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, minimumSize: Size(360, 50)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageThree(),
                      ));
                },
                child: const Text('Sing Up')),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 40,
              child: Text('-Or Sing in with-'),
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
                    child: Image.asset(
                      'assets/images/pngwing.com (6).png',
                    ),
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
      ),
    );
  }

  void singIn(BuildContext context) {
    final _email = _emailControler.text;
    final _password = _passwordControler.text;

    if (_email == _password) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const Home(),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Username and Passsword is not equel")));
    }
  }
}
