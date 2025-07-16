import 'package:flutter/material.dart';
import 'package:learning_languages/screens/familymemPage.dart';
import 'package:learning_languages/screens/numbersPage.dart';

class TokuoApp extends StatelessWidget {
  const TokuoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 223, 198),
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          "Tokuo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 85, 20, 20),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            text: "Numbers",
            color: Colors.orangeAccent,
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Family_members();
                  },
                ),
              );
            },
            text: "FamilyMembers",
            color: Color.fromARGB(255, 5, 151, 17),
          ),
          Category(
            onTap: () {},
            text: "Colors",
            color: Color.fromARGB(255, 159, 1, 180),
          ),
          Category(
            onTap: () {},
            text: "Phrases",
            color: Color.fromARGB(255, 53, 196, 239),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 78,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
