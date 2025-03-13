import 'package:flutter/material.dart';
import 'package:language_learning_application/components/category_item.dart';
import 'package:language_learning_application/screens/colors_page.dart';
import 'package:language_learning_application/screens/family_page.dart';
import 'package:language_learning_application/screens/numbers_page.dart';
import 'package:language_learning_application/screens/phrases_page.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffde4),
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumbersPage();
                }));
              },
              text: 'Numbers',
              color: Color(0xFFff9f3b)),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FamilyPage();
                }));
              },
              text: 'Family Members',
              color: Color(0xFF5d8b3e)),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              },
              text: 'Colors',
              color: Color(0xFF854cae)),
          Category(
                          onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PhrasesPage();
                }));
              },
            text: 'Phrases', color: Color(0xFF51b0d5)),
        ],
      ),
    );
  }
}
