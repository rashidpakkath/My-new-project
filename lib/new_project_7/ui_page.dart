import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MypageFor extends StatelessWidget {
  const MypageFor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeef0f6),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage('assets/images/a.jpeg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Alexander',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 140,
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFeceef5),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(2, 2))
                        ]),
                    child: Icon(
                      Icons.auto_graph,
                      size: 20,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFeceef5),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(2, 2))
                        ]),
                    child: Icon(
                      Icons.bluetooth,
                      size: 20,
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Design',
                        style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        'Device',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '''Smooth control youre mad's''',
                    style: GoogleFonts.raleway(
                        textStyle:
                            const TextStyle(color: Colors.grey, fontSize: 19)),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: const Color(0xFFeceef5),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(2, 2))
                        ]),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: const Color(0xFFffc2ad),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(1, 1))
                        ]),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
