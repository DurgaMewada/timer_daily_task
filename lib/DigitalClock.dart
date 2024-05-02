import 'package:flutter/material.dart';
import 'dart:async';

import 'Component/Global.dart';

class MyClock extends StatefulWidget {
  const MyClock({super.key});

  @override
  State<MyClock> createState() => _MyClockState();
}

class _MyClockState extends State<MyClock> {
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
          image: DecorationImage(
            image: AssetImage('asset/image/Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                    text: '${dateTime.hour % 12}:${dateTime.minute}',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 50,
                      height: 1
                    ),
                  ),
                  TextSpan(text: ':${dateTime.second}',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  )),
                  TextSpan(text: ' $time',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

