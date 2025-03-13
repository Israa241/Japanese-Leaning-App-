import 'package:flutter/material.dart';
import 'package:language_learning_application/components/list_item.dart';
import 'package:language_learning_application/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Item> phrases = const [
    Item(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka',
        enName: 'what is your name?'),
    Item(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'where are you going'),
    Item(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling'),
    Item(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Watashi wa puroguramingu daisukide',
        enName: 'i love programming'),
    Item(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandes',
        enName: 'programming is easy'),
    Item(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Kimasu ka?',
        enName: 'are you coming'),
    Item(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai, watashi wa kimasu',
        enName: 'yes im coming'),
    Item(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku o wasurenaide kudasai',
        enName: 'dont forget to subscribe'),
    Item(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime'),
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
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return ListItem(color: Color(0xFF51b0d5), item: phrases[index]);
          }),
    );
  }
}
