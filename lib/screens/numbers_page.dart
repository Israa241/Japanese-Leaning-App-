import 'package:flutter/material.dart';
import 'package:language_learning_application/components/list_item.dart';
import 'package:language_learning_application/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numbrs = const [
    Item(
        sound: 'sounds/numbers/number_one_sound.mp3',
        img: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    Item(
        sound: 'sounds/numbers/number_two_sound.mp3',
        img: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two'),
    Item(
        sound: 'sounds/numbers/number_three_sound.mp3',
        img: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three'),
    Item(
        sound: 'sounds/numbers/number_four_sound.mp3',
        img: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four'),
    Item(
        sound: 'sounds/numbers/number_five_sound.mp3',
        img: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five'),
    Item(
        sound: 'sounds/numbers/number_six_sound.mp3',
        img: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six'),
    Item(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        img: 'assets/images/numbers/number_seven.png',
        jpName: 'nana',
        enName: 'seven'),
    Item(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        img: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    Item(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        img: 'assets/images/numbers/number_nine.png',
        jpName: 'kyu',
        enName: 'nine'),
    Item(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        img: 'assets/images/numbers/number_ten.png',
        jpName: 'jyu',
        enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: numbrs.length,
          itemBuilder: (context, index) {
            return ListItem(color: Color(0xFFff9f3b), item: numbrs[index]);
          }),
    );
  }
}
