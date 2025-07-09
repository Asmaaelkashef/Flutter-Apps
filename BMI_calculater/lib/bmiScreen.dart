import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_name/bmiResult.dart';

class Bmiscreen extends StatefulWidget {
  const Bmiscreen({super.key});

  @override
  State<Bmiscreen> createState() => _BmiscreenState();
}

class _BmiscreenState extends State<Bmiscreen> {
  bool isMale = false;
  double height = 60.0;
  int weight = 20;
  int age = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(213, 6, 47, 117),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(237, 0, 21, 58),
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale
                              ? Color.fromARGB(240, 187, 177, 177)
                              : Color.fromARGB(237, 0, 21, 58),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 80,
                              color: Color.fromARGB(255, 49, 121, 180),
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 22),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: !isMale
                                ? Color.fromARGB(240, 187, 177, 177)
                                : Color.fromARGB(237, 0, 21, 58),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 80,
                              color: Color.fromARGB(255, 255, 4, 159),
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 20.0, left: 20.00, bottom: 19.00),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.00,
                    ),
                    Text(
                      'Height',
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 210,
                        min: 60,
                        activeColor: Color.fromARGB(240, 187, 177, 177),
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        })
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(237, 0, 21, 58),
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.00),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: "age-",
                                mini: true,
                                backgroundColor:
                                    Color.fromARGB(240, 187, 177, 177),
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: "age+",
                                mini: true,
                                backgroundColor:
                                    Color.fromARGB(240, 187, 177, 177),
                                child: Icon(Icons.add),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(237, 0, 21, 58),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: "weight-",
                                mini: true,
                                backgroundColor:
                                    Color.fromARGB(240, 187, 177, 177),
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: "weight-",
                                mini: true,
                                backgroundColor:
                                    Color.fromARGB(240, 187, 177, 177),
                                child: Icon(
                                  Icons.add,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(237, 0, 21, 58),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: double.infinity,
            color: Color.fromARGB(237, 0, 21, 58),
            child: MaterialButton(
                onPressed: () {
                  var result = weight / pow(height / 100, 2);
                  print(result.round());

                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Bmiresult(
                      age: age,
                      isMale: isMale,
                      result: result.round(),
                    ),
                  ));
                },
                height: 70,
                child: Text(
                  'calculate',
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
