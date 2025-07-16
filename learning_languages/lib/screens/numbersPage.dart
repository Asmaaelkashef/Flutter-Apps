import 'package:flutter/material.dart';
import 'package:learning_languages/rows.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 85, 20, 20),
        toolbarHeight: 80,
        title: Text(
          "Numbers",
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyWidget(
              color: Colors.orangeAccent,
              text1: "Ichi",
              text2: "one",
              image: "assets/images/numbers/number_one.png",
              audio: "sounds/numbers/number_one_sound.mp3"
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: Colors.orangeAccent,
              text1: "Ni",
              text2: "two",
              image: "assets/images/numbers/number_two.png",
              audio: "sounds/numbers/number_two_sound.mp3",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: Colors.orangeAccent,
              text1: "San",
              text2: "three",
              image: "assets/images/numbers/number_three.png",
              audio: "sounds/numbers/number_three_sound.mp3",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: Colors.orangeAccent,
              text1: "Shi",
              text2: "four",
              image: "assets/images/numbers/number_four.png",
              audio: "sounds/numbers/number_four_sound.mp3",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: Colors.orangeAccent,
              text1: "Go",
              text2: "five",
              image: "assets/images/numbers/number_five.png",
              audio: "sounds/numbers/number_five_sound.mp3",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: Colors.orangeAccent,
              text1: "Roku",
              text2: "six",
              image: "assets/images/numbers/number_six.png",
              audio: "sounds/numbers/number_six_sound.mp3",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: Colors.orangeAccent,
              text1: "Sebun",
              text2: "seven",
              image: "assets/images/numbers/number_seven.png",
              audio: "sounds/numbers/number_seven_sound.mp3",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: Colors.orangeAccent,
              text1: "hachi",
              text2: "eight",
              image: "assets/images/numbers/number_eight.png",
              audio: "sounds/numbers/number_eight_sound.mp3",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: Colors.orangeAccent,
              text1: "Kyu",
              text2: "nine",
              image: "assets/images/numbers/number_nine.png",
              audio: "sounds/numbers/number_nine_sound.mp3" ,
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: Colors.orangeAccent,
              text1: "Ju",
              text2: "ten",
              image: "assets/images/numbers/number_ten.png",
              audio: "sounds/numbers/number_ten_sound.mp3",
            ),
          ],
        ),
      )
    );
  }
}
