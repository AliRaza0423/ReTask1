import 'package:flutter/material.dart';
import 'package:retask_1/doted_stepbar.dart';

import 'Pg4_personalinfo.dart';
import 'Pg5_experience.dart';
import 'Pg6_education.dart';

class Signin_scaffold extends StatefulWidget {
  @override
  _Signin_scaffoldState createState() => _Signin_scaffoldState();
}

class _Signin_scaffoldState extends State<Signin_scaffold> {
  int _counter = 1;
  Map<int, Widget> _map = {
    1: Personalinfo_Pg4(),
    2: Experience_Pg5(),
    3: Education_Pg6(),
  };
  // List<String> _title = [
  //   'Personal Information',
  //   'Experience',
  //   'Education',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/background.png'),
                fit: BoxFit.cover)),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     IconButton(
            //         icon: Icon(Icons.arrow_back),
            //         onPressed: () {
            //           Navigator.of(context).pop();
            //         }),
            //     Text(_title[_counter], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),),
            //     SizedBox(
            //       width: 25,
            //     )
            //   ],
            // ),

            _map[_counter],
            // Doted_stepbar(),
//------------------------Buttons------------------------
            TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.red[800]),
                )),
            FractionallySizedBox(
              widthFactor: 0.85,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[800],
                    // minimumSize: Size(100, 40),
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (_counter < 4) {
                      setState(() {
                        _counter += 1;
                      });
                    } else {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => Experience_Pg5()));
                    }
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
