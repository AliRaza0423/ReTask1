import 'package:flutter/material.dart';
import 'package:retask_1/AnnouncementCard.dart';
import 'package:retask_1/BirthdayCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        // primarySwatch: Colors.blue,
      ),
      // home: Signin_Pg1(),
      home: BirthdayCard(),
    );
  }
}

//-sacn-ajkscnjahcashn