import 'package:flutter/material.dart';
import 'package:retask_1/AnnouncementCard.dart';
import 'package:retask_1/BirthdayCard.dart';
import 'package:retask_1/EventCard.dart';
import 'package:retask_1/LeaveCard.dart';
import 'package:retask_1/LinearProgressBar.dart';

class Pg19_HomePage extends StatelessWidget {
  List<LeaveCard> L_list = [
    LeaveCard('Anual Leave', '20 anual leaves pending'),
    LeaveCard('Casual Leave', '20 anual leaves pending'),
    LeaveCard('Sick Leave', '20 anual leaves pending')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.4,
            height: 350,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.27,
                    height: 260,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/forest.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(),
                  ),
                ),
                Positioned(
                  // top: MediaQuery.of(context).size.height * 0.25,
                  top: 220,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      // color: Colors.red,
                      color: Colors.grey[50],
                    ),
                    // height: MediaQuery.of(context).size.height * 0.1,
                    height: 100,
                  ),
                ),
                Positioned(
                  // top: MediaQuery.of(context).size.height * 0.22,
                  top: 190,
                  left: 0,
                  right: 0,
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.15,
                    height: 140,
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.red,
                          width: 3,
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    child: Card(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/ic.jpg'),
              height: 30,
            ),
            title: Text('Announcements'),
            trailing: TextButton(
              onPressed: () {},
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) => AnnouncementCard()),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/ic.jpg'),
              height: 30,
            ),
            title: Text('Birthday'),
            trailing: TextButton(
              onPressed: () {},
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(
            height: 130,
            child: ListView.builder(
                // padding: EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) => BirthdayCard()),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/ic.jpg'),
              height: 30,
            ),
            title: Text('Leave Management'),
            trailing: TextButton(
              onPressed: () {},
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  child: ListView.builder(
                    // padding: EdgeInsets.symmetric(horizontal: 8),
                    // scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) => L_list[index],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[800],
                  ),
                  onPressed: () {},
                  child: Text(
                    'Apply Leave',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/ic.jpg'),
              height: 30,
            ),
            title: Text('Team Member'),
            trailing: TextButton(
              onPressed: () {},
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(margin: EdgeInsets.all(10), child: LinearBar('Today')),
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/ic.jpg'),
              height: 30,
            ),
            title: Text('Events'),
            trailing: TextButton(
              onPressed: () {},
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(
            height: 265,
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) => EventCard()),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/ic.jpg'),
              height: 30,
            ),
            title: Text('Leave Management'),
            trailing: TextButton(
              onPressed: () {},
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Container(
              height: 230,
              child: ListView.builder(
                  // padding: EdgeInsets.symmetric(horizontal: 8),
                  // scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) => LeaveCard('hey', 'helo')),
            ),
          ),
        ],
      ),
    );
  }
}
