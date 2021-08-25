import 'package:flutter/material.dart';

class Pg19_HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.27,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/image/forest.jpg'),
                      fit: BoxFit.cover,
                    )),
                    child: Column(),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.24,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      color: Colors.red,
                    ),
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.22,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          for (var i = 1; i < 10; i++)
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              color: Colors.purple,
            )
        ],
      ),
    );
  }
}
