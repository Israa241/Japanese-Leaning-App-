import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        color: color,
        height: 65,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 24),
      ),
    );
  }
}
