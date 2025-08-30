import 'package:flutter/material.dart';
import 'package:toku/app_assets/app_images.dart';
import 'package:toku/app_assets/app_sounds.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/category.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  final List<Category> familyMembers = const [
    Category(
      image: AppImages.imagesFamilyMembersFamilyFather,
      jpName: "Chichioya",
      enName: "father",
      audio: AppSounds.soundsFamilyMembersFather,
    ),
    Category(
      image: AppImages.imagesFamilyMembersFamilyDaughter,
      jpName: "Musume",
      enName: "daughter",
      audio: AppSounds.soundsFamilyMembersDaughter,
    ),
    Category(
      image: AppImages.imagesFamilyMembersFamilyGrandfather,
      jpName: "Ojisan",
      enName: "Grand Father",
      audio: AppSounds.soundsFamilyMembersGrandFather,
    ),
    Category(
      image: AppImages.imagesFamilyMembersFamilyMother,
      jpName: "Hahaoya",
      enName: "mother",
      audio: AppSounds.soundsFamilyMembersMother,
    ),
    Category(
      image: AppImages.imagesFamilyMembersFamilyGrandmother,
      jpName: "Sobo",
      enName: "Grand mother",
      audio: AppSounds.soundsFamilyMembersGrandMother,
    ),
    Category(
      image: AppImages.imagesFamilyMembersFamilyOlderBrother,
      jpName: "Nisan",
      enName: "older brother",
      audio: AppSounds.soundsFamilyMembersOlderBrother,
    ),
    Category(
      image: AppImages.imagesFamilyMembersFamilyOlderSister,
      jpName: "Ane",
      enName: "older sister",
      audio: AppSounds.soundsFamilyMembersOlderSister,
    ),
    Category(
      image: AppImages.imagesFamilyMembersFamilySon,
      jpName: "Musuko",
      enName: "son",
      audio: AppSounds.soundsFamilyMembersSon,
    ),
    Category(
      image: AppImages.imagesFamilyMembersFamilyYoungerBrother,
      jpName: "Ototo",
      enName: "younger brother",
      audio: AppSounds.soundsFamilyMembersYoungerBrohter,
    ),
    Category(
      image: AppImages.imagesFamilyMembersFamilyYoungerSister,
      jpName: "Imoto",
      enName: "younger sister",
      audio: AppSounds.soundsFamilyMembersYoungerSister,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text("Family Members"),
        backgroundColor: Color(0xFF49332A),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Item(category: familyMembers[index], color: Color(0xFF528032));
        },
      ),
    );
  }
}
