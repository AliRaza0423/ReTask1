import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearBar extends StatelessWidget {
  LinearBar(this.title);
  String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

//.....................Text above Linear bar................................. 

        Positioned(
            left: 0,
            top: 20,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.red[800], fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Absents',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('On Time',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Late', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('12',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                    Text('10',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold)),
                    Text('2',
                        style: TextStyle(
                            color: Colors.red[800],
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            )
          ),

//----------------------------Bar----------------------------------//
        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: LinearPercentIndicator(
            // width: 300,
            width: MediaQuery.of(context).size.width *0.7,
            lineHeight: 12,
            percent: 0.2,
            backgroundColor: Colors.grey[200],
            progressColor: Colors.blue[300],
          ),
        ),
        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: LinearPercentIndicator(
            // width: 300,
            width: MediaQuery.of(context).size.width *0.7,
            lineHeight: 12,
            percent: 0.9,
            backgroundColor: Colors.transparent,
            progressColor: Colors.red[700],
          ),
        ),

        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: LinearPercentIndicator(
            // width: 300,
            width: MediaQuery.of(context).size.width *0.7,
            lineHeight: 12,
            percent: 0.7,
            backgroundColor: Colors.transparent,
            progressColor: Colors.green[400],
          ),
        ),

        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: LinearPercentIndicator(
            // width: 300,
            width: MediaQuery.of(context).size.width *0.7,
            lineHeight: 12,
            percent: 0.2,
            backgroundColor: Colors.transparent,
            progressColor: Colors.blue[300],
          ),
        ),
      ],
    );
  }
}
