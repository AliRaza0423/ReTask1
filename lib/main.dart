import 'package:flutter/material.dart';
import 'Pg1_signin.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
     SystemChrome.setEnabledSystemUIOverlays ([]);
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
        accentColor: Colors.red,
        
        // primarySwatch: Colors.blue,
      ),
      home: Signin_Pg1(),
      // home: Pg19_HomePage(),
    );
  }
}