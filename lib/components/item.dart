import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/models/category.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.category,
    required this.color,
    this.showImage = true,
  });

  final Category category;
  final Color color;
  final bool showImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          if (showImage)
            Container(
              color: Color(0xffFEF2DA),
              child: Image.asset(category.image),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  category.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(
                AssetSource(category.audio.replaceFirst("assets/", "")),
              );
            },

            icon: Icon(Icons.play_arrow),
            color: Colors.white,
            iconSize: 26,
          ),
        ],
      ),
    );
  }
}
