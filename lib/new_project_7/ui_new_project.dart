import 'package:flutter/material.dart';
import 'package:flutter_ui_2/controller/controler.dart';
import 'package:flutter_ui_2/new_project_7/ui_project.dart';

class MyNewproject1 extends StatefulWidget {
  const MyNewproject1({super.key});

  @override
  State<MyNewproject1> createState() => _MyNewproject1State();
}

class _MyNewproject1State extends State<MyNewproject1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.list,
                      size: 30,
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    Text('Freedom way,Lokki phase'),
                    SizedBox(
                      width: 50,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/aleena.jpeg'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    labelText: "Search",
                    labelStyle: const TextStyle(color: Colors.black),
                    fillColor: const Color(0xFfffe2e2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 170,
              child: Stack(
                children: [
                  Container(
                    height: 170,
                    width: MediaQuery.sizeOf(context).width / 1.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFfff1d1d),
                              Color(0xFfff1d1d),
                              Colors.white
                            ])),
                  ),
                  Positioned(
                      right: -20,
                      bottom: -30,
                      child: Container(
                        height: 150,
                        width: 250,
                        child: Image.asset(
                          'assets/images/bwwww.png',
                        ),
                      )),
                  Positioned(
                      left: 20,
                      top: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Spacial Offer  ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            textAlign: TextAlign.start,
                          ),
                          const Text(
                            'for March  ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'We are here with the tast \n burgers world',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(0, 30),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyUipage(),
                                    ));
                              },
                              child: const Text(
                                'Buy Now',
                                style: TextStyle(color: Color(0xFfff1d1d)),
                              ))
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 5),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                foodList[index].isSelecte =
                                    !foodList[index].isSelecte;
                              });
                            },
                            child: Container(
                              width: 140,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: foodList[index].isSelecte
                                      ? Color(0xFfff1d1d)
                                      : Color.fromARGB(255, 252, 249, 249),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1, color: Color(0xFfff1d1d))),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset(foodList[index].image),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      foodList[index].name,
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: foodList[index].isSelecte
                                            ? Color.fromARGB(255, 253, 250, 250)
                                            : Color.fromARGB(255, 19, 16, 16),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 270,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                  crossAxisSpacing: 0,
                ),
                shrinkWrap: false,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(foodList[index].rating)
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(foodList[index].images),
                          ),
                          Text(
                            foodList[index].burgerName,
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            foodList[index].subject,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    foodList[index].rate,
                                    style: const TextStyle(
                                        color: Color(0xFfff1d1d),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: FloatingActionButton.small(
                                      backgroundColor: const Color(0xFfff1d1d),
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 50,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Meal Menu',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(
                          'See All',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(Icons.arrow_right)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Container(
                      width: 70,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/images/pizza.png'),
                              fit: BoxFit.cover)),
                    ),
                    title: Text(
                      'Papper Pizza',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text('5kg Box of Pizza'),
                    trailing: Text(
                      '₹ 999',
                      style: TextStyle(
                          color: Color(0xFfff1d1d),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
