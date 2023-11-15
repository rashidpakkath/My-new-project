import 'package:flutter/material.dart';

class Transation extends StatelessWidget {
  const Transation({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text(
                  '10000',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Creadited',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
