import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_3/page_2.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              width: 300,
              child:
                  Image.asset('assets/images/Banana_leaf-removebg-preview.png'),
            ),
            const Text('Oxygen',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageTwo()),
                  );
                },
                child: Text(
                  'START',
                ))
          ],
        ),
      ),
    );
  }
}
