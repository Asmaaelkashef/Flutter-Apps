import 'package:flutter/material.dart';

class Bmiresult extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  Bmiresult({
    required this.result,
    required this.isMale,
    required this.age,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 0, 21, 56),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: 35,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(236, 0, 21, 56),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender is : ${isMale == true ? 'Male' : 'Female'}',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 27),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 27),
            ),
            Text(
              'Result is : $result',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 27),
            ),
          ],
        ),
      ),
    );
  }
}
