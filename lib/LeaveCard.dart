import 'package:flutter/material.dart';

class LeaveCard extends StatelessWidget {
  String text;
  String text1;
  LeaveCard(this.text, this.text1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.red[50],
          backgroundImage: AssetImage('assets/image/round.png'),
        ),
        title: Text(text),
        subtitle: Text(
          text1,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ),
    );
  }
}
