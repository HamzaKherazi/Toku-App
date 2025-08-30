import 'package:flutter/material.dart';
import 'package:toku/app_assets/app_images.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/category.dart';
import 'package:toku/app_assets/app_sounds.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  final List<Category> numbers = const [
    Category(
      image: AppImages.imagesNumbersNumberOne,
      jpName: "ichi",
      enName: "one",
      audio: AppSounds.soundsNumbersNumberOneSound,
    ),
    Category(
      image: AppImages.imagesNumbersNumberTwo,
      jpName: "Ni",
      enName: "two",
      audio: AppSounds.soundsNumbersNumberTwoSound,
    ),
    Category(
      image: AppImages.imagesNumbersNumberThree,
      jpName: "San",
      enName: "three",
      audio: AppSounds.soundsNumbersNumberThreeSound,
    ),
    Category(
      image: AppImages.imagesNumbersNumberFour,
      jpName: "Shi",
      enName: "four",
      audio: AppSounds.soundsNumbersNumberFourSound,
    ),
    Category(
      image: AppImages.imagesNumbersNumberFive,
      jpName: "Go",
      enName: "five",
      audio: AppSounds.soundsNumbersNumberFiveSound,
    ),
    Category(
      image: AppImages.imagesNumbersNumberSix,
      jpName: "Roku",
      enName: "six",
      audio: AppSounds.soundsNumbersNumberSixSound,
    ),
    Category(
      image: AppImages.imagesNumbersNumberSeven,
      jpName: "Sebun",
      enName: "seven",
      audio: AppSounds.soundsNumbersNumberSevenSound,
    ),
    Category(
      image: AppImages.imagesNumbersNumberEight,
      jpName: "hachi",
      enName: "eight",
      audio: AppSounds.soundsNumbersNumberEightSound,
    ),
    Category(
      image: AppImages.imagesNumbersNumberNine,
      jpName: "Kyù",
      enName: "nine",
      audio: AppSounds.soundsNumbersNumberNineSound,
    ),
    Category(
      image: AppImages.imagesNumbersNumberTen,
      jpName: "Ju",
      enName: "ten",
      audio: AppSounds.soundsNumbersNumberTenSound,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text("Numbers"),
        backgroundColor: Color(0xFF49332A),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(category: numbers[index], color: Color(0xFFF99531));
        },
      ),
    );
  }
}

// List<Widget> getList(List<Number> numbers) {
//   List<Widget> itemsList = [];
//   numbers.forEach((number) {
//     itemsList.add(Item(number: number));
//   });
//   return itemsList;
// }
