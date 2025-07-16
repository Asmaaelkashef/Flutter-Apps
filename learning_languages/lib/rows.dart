import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyWidget extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final String image;
  final String audio;

  const MyWidget({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.audio,
    this.color = const Color(0xffFFF6DC),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: IconButton(
              onPressed: () async {
                try {
                  final player = AudioPlayer();
                  await player.play(AssetSource(audio));
                } catch (e) {
                  print("خطأ في التشغيل: ${e.toString()}");
                }
              },
              icon: const Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
