import 'package:flutter/material.dart';
import 'package:flutter_ui_2/new_project_4/profile_new.dart';
import 'package:flutter_ui_2/new_project_4/second_page.dart';

class MyPagetwo extends StatelessWidget {
  const MyPagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('Snack bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showToast(context),
          child: const Text('Next Page'),
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Are You Sure'),
        action: SnackBarAction(
            label: 'Yes',
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => SecondPage(),
              ));
            }),
      ),
    );
  }
}
