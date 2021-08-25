import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => Page21(),
        //   ),
        // );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
//--------------image block----------------------
            Image(
              image: AssetImage('assets/image/event.png'),
              // height: 170,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
//---------text below picture---------------
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Text(
                        '31',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text('May',
                          style: TextStyle(
                              color: Colors.red[800],
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'This super leogue Lorem 2017',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.red[800],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text('16:04 20/10/2021',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
