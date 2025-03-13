import 'package:flutter/material.dart';
import 'package:language_learning_application/components/list_item.dart';
import 'package:language_learning_application/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colors = const [
    Item(
        sound: 'sounds/colors/black.wav',
        img: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black'),
    Item(
        sound: 'sounds/colors/red.wav',
        img: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    Item(
        sound: 'sounds/colors/white.wav',
        img: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'white'),
    Item(
        sound: 'sounds/colors/brown.wav',
        img: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    Item(
        sound: 'sounds/colors/green.wav',
        img: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    Item(
        sound: 'sounds/colors/yellow.wav',
        img: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow'),
    Item(
        sound: 'sounds/colors/gray.wav',
        img: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'gray'),
    Item(
        sound: 'sounds/colors/dusty yellow.wav',
        img: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ListItem(color: Color(0xFF854cae), item: colors[index]);
          }),
    );
  }
}
