import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'Component/Global.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();

        switch (dateTime.weekday) {
          case 1:
            day = 'Mon';
            break;
          case 2:
            day = 'Tue';
            break;
          case 3:
            day = 'Wed';
            break;
          case 4:
            day = 'Thurs';
            break;
          case 5:
            day = 'Fri';
            break;
          case 6:
            day = 'Sat';
            break;
          case 7:
            day = 'Sun';
        }
        switch (dateTime.month) {
          case 1:
            month = 'January';
            break;
          case 2:
            month = 'February';
            break;
          case 3:
            month = 'March';
            break;
          case 4:
            month = 'April';
            break;
          case 5:
            month = 'May';
            break;
          case 6:
            month = 'June';
            break;
          case 7:
            month = 'July';
            break;
          case 8:
            month = 'August';
            break;
          case 9:
            month = 'September';
            break;
          case 10:
            month = 'October';
            break;
          case 11:
            month = 'November';
            break;
          case 12:
            month = 'December';
            break;
        }

        if (dateTime.hour > 11) {
          time = 'PM';
        } else {
          time = 'AM';
        }
      });
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end:Alignment.bottomLeft,
            colors: [
              Color(0xff3d39ad),
              Colors.white,
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white54,
                      offset: Offset(0,5),
                      spreadRadius: 1,
                      blurRadius: 6,
                    )
                  ],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)
                ),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Center(child: Container(height:10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),)),
                    ...List.generate(60, (index) => Center(
                      child: Transform.rotate(
                          angle: ((index+1)*6*pi)/180,
                          child: ((index+1)%5==0)?
                          const VerticalDivider(
                            thickness: 4,
                            color: Color(0xff3d39ad),
                            indent: 0,
                            endIndent: 230,
                          )
                              :  const VerticalDivider(
                            thickness: 3,
                            color: Colors.black,
                            indent: 0,
                            endIndent: 240,
                          )
                      ),
                    ),),
                    Transform.rotate(
                      angle: (dateTime.hour*30*pi)/180,
                      child: VerticalDivider(
                        thickness: 4,
                        color: Color(0xff3d39ad),
                        indent: 60,
                        endIndent: 100,
                      ),
                    ),
                    Transform.rotate(
                      angle: (dateTime.second*6*pi)/180,
                      child: VerticalDivider(
                        thickness: 3,
                        color: Colors.black,
                        indent: 40,
                        endIndent: 100,
                      ),
                    ),
                    Transform.rotate(
                      angle: (dateTime.minute*6*pi)/180,
                      child: VerticalDivider(
                        thickness: 4,
                        color: Colors.black,
                        indent: 30,
                        endIndent: 100,
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 30,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:'$day,' ,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(text: ' ${dateTime.day} $month',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ))
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${dateTime.hour}:${dateTime.minute}',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 50,
                            height: 1,
                        ),
                      ),
                      TextSpan(text: ' $time',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}



