import 'dart:typed_data';

import 'package:bmi_calculator/components.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {

  final bool isMale;
  final int age;
  final int result;
  BMIResultScreen(
    {
    required this.isMale,
    required this.result,
    required this.age,
  }
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text(
        'BMI Result',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
            'Gender : ${isMale == true ? 'Male' : 'Female'}',
             style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Age : $age',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Result : $result',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                bodyTybe(textweightype: 'Very Severely underweight',
                 textweightresult: '<=16',
                  textcolor: Colors.blue.shade900,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                bodyTybe(
                  textweightype: 'Severely underweight',
                   textweightresult: '16.0 - 16.9',
                    textcolor: Colors.blue.shade700,
                    ),
                SizedBox(
                  height: 20.0,
                ),
                bodyTybe(textweightype: 'Underweight',
                 textweightresult: '170.0 - 18.4',
                  textcolor: Colors.blue.shade300,
                  ),
                  SizedBox(
                  height: 20.0,
                ),
                bodyTybe(textweightype: 'Normal (Healthy weight)',
                 textweightresult: '18.5 - 24.9',
                  textcolor: Colors.green,
                  ),
                  SizedBox(
                  height: 20.0,
                ),
                  bodyTybe(textweightype: 'Overweight',
                   textweightresult: '25.0 - 29.9',
                    textcolor: Colors.yellow.shade600,
                    ),
                    SizedBox(
                  height: 20.0,
                ),
                bodyTybe(textweightype: 'Obese Class|(Moderatly obse)',
                 textweightresult: '30.0 - 34.9',
                  textcolor: Colors.orange.shade600,
                  ),
                  SizedBox(
                  height: 20.0,
                ),
                  bodyTybe(textweightype: 'Obese Class|(Severely obese)',
                   textweightresult: '35.0 - 39.9',
                    textcolor: Colors.red.shade600),
                    SizedBox(
                  height: 20.0,
                ),
                    bodyTybe(textweightype: 'Obese Class|(Very Severely obese)',
                     textweightresult: '>=40',
                      textcolor: Colors.red.shade900),
          
              ],
            ),
          ),
        ),
      ],
    )
      
    );
  }
}