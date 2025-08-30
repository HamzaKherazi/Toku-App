import 'package:flutter/material.dart';
import 'package:toku/app_assets/app_sounds.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/category.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<Category> numbers = const [
    Category(
      jpName: "Wasureru na yō ni kōdoku", // 忘れるなように購読
      enName: "Don’t forget to subscribe",
      audio: AppSounds.soundsPhrasesDontForgetToSubscribe,
    ),
    Category(
      jpName: "Puroguramingu ga daisuki", // プログラミングが大好き
      enName: "I love programming",
      audio: AppSounds.soundsPhrasesILoveProgramming,
    ),
    Category(
      jpName: "Puroguramingu wa kantan", // プログラミングは簡単
      enName: "Programming is easy",
      audio: AppSounds.soundsPhrasesProgrammingIsEasy,
    ),
    Category(
      jpName: "Doko ni iku no?", // どこに行くの？
      enName: "Where are you going?",
      audio: AppSounds.soundsPhrasesWhereAreYouGoing,
    ),
    Category(
      jpName: "Anata no namae wa nan desu ka?", // あなたの名前は何ですか？
      enName: "What is your name?",
      audio: AppSounds.soundsPhrasesWhatIsYourName,
    ),
    Category(
      jpName: "Anime ga daisuki", // アニメが大好き
      enName: "I love anime",
      audio: AppSounds.soundsPhrasesILoveAnime,
    ),
    Category(
      jpName: "Go kibun wa ikagadesu ka?", // ご気分はいかがですか？
      enName: "How are you feeling?",
      audio: AppSounds.soundsPhrasesHowAreYouFeeling,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF51B0D5),
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text("Phrases"),
        backgroundColor: Color(0xFF49332A),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            category: numbers[index],
            color: Color(0xFF51B0D5),
            showImage: false,
          );
        },
      ),
    );
  }
}
