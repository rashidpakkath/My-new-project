// ignore: camel_case_types
import 'package:flutter/material.dart';

class imageControler {
  final String imageUse;

  imageControler({
    required this.imageUse,
  });
}

List<imageControler> imageSelect = [
  imageControler(imageUse: 'assets/images/rose.jpg'),
  imageControler(imageUse: 'assets/images/joss.jpeg'),
  imageControler(imageUse: 'assets/images/fread.webp'),
  imageControler(imageUse: 'assets/images/0.jpg'),
  imageControler(imageUse: 'assets/images/al.jpeg'),
  imageControler(imageUse: 'assets/images/images.jpeg'),
  imageControler(imageUse: 'assets/images/kido.jpg')
];

class ContainerController {
  final String image;
  final String name;
  final String subName;
  final Color color;

  ContainerController({
    required this.image,
    required this.name,
    required this.subName,
    required this.color,
  });
}

List<ContainerController> containerList = [
  ContainerController(
      image: 'assets/images/book5.png',
      name: 'Be Active',
      subName: '2hour in 1Day',
      color: Color(0xFFb786fb)),
  ContainerController(
    image: 'assets/images/book4.png',
    name: 'Go for a Walk',
    subName: '3hour 4days',
    color: Color(0xFFfd9c96),
  ),
  ContainerController(
    image: 'assets/images/book3.png',
    name: 'React at Night',
    subName: '3hour 2days',
    color: Color(0xFFf2cc43),
  ),
  ContainerController(
    image: 'assets/images/book2.png',
    name: 'Cook Dinner',
    subName: '12hour 3days',
    color: Color(0xFF77cdfc),
  ),
  ContainerController(
    image: 'assets/images/book1.png',
    name: 'Organize Work',
    subName: '3hour 4days',
    color: Color(0xFF64dc9c),
  ),
  ContainerController(
    image: 'assets/images/book.png',
    name: 'Practice Freanch',
    subName: '3hour 4days',
    color: Color(0xFF75cdfc),
  )
];

class NewBox {
  final String image;
  final String name;

  NewBox({
    required this.image,
    required this.name,
  });
}

List<NewBox> selectItem = [
  NewBox(
    image: 'assets/images/Germa.png',
    name: 'Spanish',
  ),
  NewBox(
    image: 'assets/images/German.png',
    name: 'Italiyan',
  ),
  NewBox(
    image: 'assets/images/Ger.png',
    name: 'German',
  )
];

class BigBox {
  final String name;
  final String head;
  final String title;
  final String images;
  final String image;
  final Color border;
  final Color color;
  final double value;

  BigBox({
    required this.image,
    required this.head,
    required this.images,
    required this.name,
    required this.title,
    required this.border,
    required this.color,
    required this.value,
  });
}

List<BigBox> selecteData = [
  BigBox(
    image: 'assets/images/aleena.jpeg',
    head: 'Ongoing',
    images: 'assets/images/t.png',
    name: 'Jess',
    title: 'Write a proposal for Inc',
    border: Colors.black,
    color: Colors.white,
    value: 0.3,
  ),
  BigBox(
    image: 'assets/images/joss.jpeg',
    head: 'Future',
    images: 'assets/images/ee.png',
    name: 'Max',
    title: 'Ed-tech market analysis',
    border: Colors.white,
    color: Colors.black,
    value: 0.1,
  ),
  BigBox(
    image: 'assets/images/joss.jpeg',
    head: 'Ongoing',
    images: 'assets/images/c.png',
    name: 'Max',
    title: 'E-commerse loading page',
    border: Colors.black,
    color: Colors.white,
    value: 0.5,
  ),
];

class NewClass {
  final String number;
  final String para;
  final String imageOne;
  final String imageTwo;
  final String imageThree;
  final String count;
  final Color colorOne;
  final Color colorTwo;
  final Color colorThree;

  NewClass({
    required this.number,
    required this.count,
    required this.imageOne,
    required this.imageThree,
    required this.imageTwo,
    required this.para,
    required this.colorOne,
    required this.colorTwo,
    required this.colorThree,
  });
}

List<NewClass> listItems = [
  NewClass(
    number: '23',
    count: '25',
    imageOne: 'assets/images/al.jpeg',
    imageThree: 'assets/images/aleena.jpeg',
    imageTwo: 'assets/images/fread.webp',
    para: '5 Tips To Supercharge Your Motivation',
    colorOne: Color(0xFFf58c37),
    colorTwo: Color(0xFFf0af76),
    colorThree: Colors.white,
  ),
  NewClass(
    number: '42',
    count: '10',
    imageOne: 'assets/images/kili.jpeg',
    imageThree: 'assets/images/joss.jpeg',
    imageTwo: 'assets/images/images.jpeg',
    para: 'Coventry City Guide Including Coventry Hotels',
    colorOne: Color(0xFFf3da4d),
    colorTwo: Color(0xFFf1de8a),
    colorThree: Colors.white,
  )
];

class FinancePage {
  final String image;
  final String name;
  final String position;
  final IconData icons;
  final String button;
  bool isSelected;

  FinancePage(
      {required this.image,
      required this.name,
      required this.position,
      required this.button,
      required this.icons,
      required this.isSelected});
}

List<FinancePage> selcetitems = [
  FinancePage(
      isSelected: false,
      image: 'assets/images/al.jpeg',
      name: 'Rob Holding',
      position: 'CEO Owner',
      button: 'Apply Card',
      icons: Icons.keyboard_double_arrow_up),
  FinancePage(
      isSelected: false,
      image: 'assets/images/fread.webp',
      name: 'Granit Xhaka',
      position: 'Freelance Graphic Design',
      button: 'Deposit',
      icons: Icons.money),
  FinancePage(
      isSelected: false,
      image: 'assets/images/aleena.jpeg',
      name: 'Anna Lisa',
      position: 'Students',
      button: 'Low Commision',
      icons: Icons.verified),
  FinancePage(
      isSelected: false,
      image: 'assets/images/images.jpeg',
      name: 'Alisa Johan',
      position: 'Entrepreneurs',
      button: 'Send Money',
      icons: Icons.restart_alt),
];

class FoodStore {
  final String name;
  final String image;
  bool isSelecte;
  final String rating;
  final String burgerName;
  final String images;
  final String rate;
  final String subject;

  FoodStore({
    required this.image,
    required this.name,
    required this.isSelecte,
    required this.burgerName,
    required this.images,
    required this.rate,
    required this.rating,
    required this.subject,
  });
}

List<FoodStore> foodList = [
  FoodStore(
      image: 'assets/images/brg.png',
      name: 'Barger',
      isSelecte: false,
      burgerName: 'Chicken Burger',
      rate: '₹ 299.00',
      rating: '3.8',
      subject: '100gm Chicken + Tomato',
      images: 'assets/images/mii.png'),
  FoodStore(
      image: 'assets/images/brgg.png',
      name: 'Pizza',
      isSelecte: false,
      burgerName: 'Meat Burger',
      rate: '₹ 399.00',
      rating: '4.8',
      subject: '100gm Meat + Tomato',
      images: 'assets/images/mi.png'),
  FoodStore(
      image: 'assets/images/brggg.png',
      name: 'Shawarma',
      isSelecte: false,
      burgerName: '',
      rate: '',
      rating: '',
      subject: '',
      images: ''),
];

class OnlineShopping {
  final String category;
  final String image;
  final String name;
  final String price;
  bool isSelected;
  final IconData icon;

  OnlineShopping({
    required this.category,
    required this.image,
    required this.isSelected,
    required this.name,
    required this.price,
    required this.icon,
  });
}

List<OnlineShopping> shoppingList = [
  OnlineShopping(
      category: 'All Shoes',
      image: 'assets/images/shoe.png',
      isSelected: false,
      name: 'Nike Jordan',
      price: '\$ 302.00',
      icon: Icons.favorite_border),
  OnlineShopping(
    category: 'Outdoor',
    image: 'assets/images/shoes.png',
    isSelected: false,
    name: 'Nike Air Max',
    price: '\$ 752.00',
    icon: Icons.favorite,
  ),
  OnlineShopping(
    category: 'tennis',
    image: '',
    isSelected: false,
    name: '',
    price: '',
    icon: Icons.abc,
  )
];
