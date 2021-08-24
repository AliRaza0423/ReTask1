import 'package:flutter/material.dart';

class BirthdayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //------------main container of card----------------------------
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      // height: 140,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //-----------leading image of card--------------------
          CircleAvatar(
            radius: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/image/bil.jpg"),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          //-----------text in card-------------------
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hamza Ali'),
              Text('20 May 2020'),
              Text(
                '3 day',
                style: TextStyle(color: Colors.red[800]),
              ),
            ],
          ),
          SizedBox(
            width: 80,
          ),
          //-----------traling celebration icon--------------
          IconButton(
              icon: Icon(
                Icons.celebration,
                size: 40,
                color: Colors.red[800],
              ),
              onPressed: () {
                //-----------------dialog box ------------------
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Hamza Ali'),
                    content: Text('Happy Birthday'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Okay',
                          style: TextStyle(color: Colors.red[800]),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
