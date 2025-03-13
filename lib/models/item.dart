import 'package:flutter/foundation.dart';

class Item {
  final String sound;
  final String? img;
  final String jpName;
  final String enName;

  const Item(
      {required this.sound,
      @required this.img,
      required this.jpName,
      required this.enName});
}
