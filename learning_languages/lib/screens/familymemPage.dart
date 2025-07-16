import 'package:flutter/material.dart';
import 'package:learning_languages/rows.dart';

class Family_members extends StatelessWidget {
  const Family_members({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 80, 8),
        toolbarHeight: 80,
        title: Text(
          "Family members",
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
              color: const Color.fromARGB(255, 136, 221, 87),
              text1: "Chichioya",
              text2: "father",
              image: "assets/images/family_members/family_father.png",
              audio: "sounds/family_members/father.wav"
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: const Color.fromARGB(255, 136, 221, 87),
              text1: "Musume",
              text2: "daughter",
              image: "assets/images/family_members/family_daughter.png",
              audio: "sounds/family_members/daughter.wav",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: const Color.fromARGB(255, 136, 221, 87),
              text1: "Ojisan",
              text2: "Grand Father",
              image: "assets/images/family_members/family_grandfather.png",
              audio: "sounds/family_members/grand father.wav",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: const Color.fromARGB(255, 136, 221, 87),
              text1: "Hahaoya",
              text2: "mother",
              image: "assets/images/family_members/family_mother.png",
              audio: "sounds/family_members/mother.wav",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color:const Color.fromARGB(255, 136, 221, 87),
              text1: "Sobo",
              text2: "grand mother",
              image: "assets/images/family_members/family_grandmother.png",
              audio: "sounds/family_members/grand mother.wav",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: const Color.fromARGB(255, 136, 221, 87),
              text1: "Nisan",
              text2: "older brother",
              image: "assets/images/family_members/family_older_brother.png",
              audio: "sounds/family_members/older bother.wav",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: const Color.fromARGB(255, 136, 221, 87),
              text1: "Ane",
              text2: "older sister",
              image: "assets/images/family_members/family_older_sister.png",
              audio: "sounds/family_members/older sister.wav",
            ),
            const SizedBox(height: 0.9,),
            MyWidget(
              color: const Color.fromARGB(255, 136, 221, 87),
              text1: "Musuko",
              text2: "son",
              image: "assets/images/family_members/family_son.png",
              audio: "sounds/family_members/son.wav" ,
            ),
            const SizedBox(height: 0.9,),
          ],
        ),
      )

    );
  }
}