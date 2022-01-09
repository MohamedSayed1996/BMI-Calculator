import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'bmi_result_screen.dart';

class BmiCalculator extends StatefulWidget {
  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isMale = true;
  bool isFemale = false;
  double height = 120;
  int age = 20;
  int weight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column( 
          children: [
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                            isFemale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: isMale == true ? Colors.pinkAccent[400] : Colors.grey
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isFemale = true;
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: isFemale == true ? Colors.pinkAccent[400] : Colors.grey
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
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
                 padding: const EdgeInsets.symmetric(
                   horizontal: 20.0,
                 ),
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: Colors.grey,
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        thumbColor: Colors.pinkAccent[400],
                        activeColor: Colors.pinkAccent[400],
                        value: height,
                        max: 250,
                        min: 80,
                        onChanged: (value)
                        {
                          setState(() {
                            height = value;
                          });
                        },
                       ),
                    ],
             
                   ),
                 ),
               ),
             ),

             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.pinkAccent[400],
                                  onPressed: (){
                                   setState(() {
                                      age++;
                                   });
                                  },
                                  heroTag: 'age++',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.pinkAccent[400],
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age--',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.pinkAccent[400],
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight++',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.pinkAccent[400],
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight--',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ],
             
                 ),
               ),
             ),
             Container(
               decoration: BoxDecoration(
                 color: Colors.pinkAccent[400],
               ),
               width: double.infinity,
               child: MaterialButton(
                 onPressed: (){
                   double result = weight / pow(height / 100,2);
                   Navigator.push(context,
                    MaterialPageRoute(builder:(context) => BMIResultScreen(
                      isMale: isMale,
                      age: age,
                      result: result.round(),
                    ) ),
                    );
                 },
                 child: Text(
                   'CALCULATE',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 15.0,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
             ),
            ],
         
         
        ),
      ),
    );
    }
}
//var result = weight / pow(height / 100,2);