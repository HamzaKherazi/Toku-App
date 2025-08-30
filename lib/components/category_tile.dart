import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20),
        color: color,
        height: 80,
        child: Text(text!, style: TextStyle(fontSize: 22, color: Colors.white)),
      ),
    );
  }
}
