import 'package:flutter/material.dart';
import 'package:language_learning_application/components/list_item.dart';
import 'package:language_learning_application/models/item.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<Item> numbrs = const [
    Item(
        sound: 'sounds/family_members/father.wav',
        img: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    Item(
        sound: 'sounds/family_members/mother.wav',
        img: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    Item(
        sound: 'sounds/family_members/grand father.wav',
        img: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojiisan',
        enName: 'grandfather'),
    Item(
        sound: 'sounds/family_members/grand mother.wav',
        img: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grandmother'),
    Item(
        sound: 'sounds/family_members/daughter.wav',
        img: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    Item(
        sound: 'sounds/family_members/son.wav',
        img: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    Item(
        sound: 'sounds/family_members/older sister.wav',
        img: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    Item(
        sound: 'sounds/family_members/older bother.wav',
        img: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother'),
    Item(
        sound: 'sounds/family_members/younger sister.wav',
        img: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister'),
    Item(
        sound: 'sounds/family_members/younger brohter.wav',
        img: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: numbrs.length,
          itemBuilder: (context, index) {
            return ListItem(color: Color(0xFF5d8b3e), item: numbrs[index]);
          }),
    );
  }
}
