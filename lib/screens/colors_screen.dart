import 'package:flutter/material.dart';
import 'package:toku/app_assets/app_images.dart';
import 'package:toku/app_assets/app_sounds.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/category.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  final List<Category> numbers = const [
    Category(
      image: AppImages.imagesColorsColorBlack,
      jpName: "Kuro", // 黒
      enName: "Black",
      audio: AppSounds.soundsColorsBlack,
    ),
    Category(
      image: AppImages.imagesColorsColorBrown,
      jpName: "Chairo", // 茶色
      enName: "Brown",
      audio: AppSounds.soundsColorsBrown,
    ),
    Category(
      image: AppImages.imagesColorsColorDustyYellow,
      jpName: "hokorippoi kiiro", // 黄色
      enName: "Dusty Yellow",
      audio: AppSounds.soundsColorsDustyYellow,
    ),
    Category(
      image: AppImages.imagesColorsColorGray,
      jpName: "Haiiro", // 灰色
      enName: "Gray",
      audio: AppSounds.soundsColorsGray,
    ),
    Category(
      image: AppImages.imagesColorsColorGreen,
      jpName: "Midori", // 緑
      enName: "Green",
      audio: AppSounds.soundsColorsGreen,
    ),
    Category(
      image: AppImages.imagesColorsColorRed,
      jpName: "Aka", // 赤
      enName: "Red",
      audio: AppSounds.soundsColorsRed,
    ),
    Category(
      image: AppImages.imagesColorsColorWhite,
      jpName: "Shiro", // 白
      enName: "White",
      audio: AppSounds.soundsColorsWhite,
    ),
    Category(
      image: AppImages.imagesColorsColorYellow,
      jpName: "Kiiro", // 黄色
      enName: "Yellow",
      audio: AppSounds.soundsColorsYellow,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text("Colors"),
        backgroundColor: Color(0xFF49332A),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(category: numbers[index], color: Color(0xFF7D40A2));
        },
      ),
    );
  }
}
