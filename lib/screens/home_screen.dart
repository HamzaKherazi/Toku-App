import 'package:flutter/material.dart';
import 'package:toku/components/category_tile.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_members_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF4D9),
      appBar: AppBar(
        title: const Text("Toku", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF49332A),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CategoryTile(
            text: "Numbers",
            color: Color(0xFFF99531),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersScreen();
                  },
                ),
              );
            },
          ),
          CategoryTile(
            text: "Family Members",
            color: Color(0xFF528032),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMembersScreen();
                  },
                ),
              );
            },
          ),
          CategoryTile(
            text: "Colors",
            color: Color(0xFF7D40A2),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsScreen();
                  },
                ),
              );
            },
          ),
          CategoryTile(
            text: "Phrases",
            color: Color(0xFF47A5CB),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
