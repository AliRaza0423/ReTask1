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

  List<LeaveCard> Holiday_list = [
    LeaveCard('Iqbal Day', '20/10/2021'),
    LeaveCard('Pakistan Independance Day', '20/10/2021'),
    LeaveCard('Labour Day', '20/10/2021')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 350,
//--------------------Containers above red Margin-------------------
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 260,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/forest.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.notifications, color: Colors.white,),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/image/user-image.png'),
                          // minRadius: 5,
                          maxRadius: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Name Here',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Front-End & UI',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
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
                    height: 100,
                  ),
                ),
                Positioned(
                  top: 190,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 140,
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.red[800],
                          width: 3,
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    child: Card(
                      // color: Colors.blue,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Check In',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                ),
                                Text(
                                  'You haven`t clock in yet',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                Text(
                                  '00 : 00 :00 HRS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Page3()));
                                  },
                                  child: Text(
                                    'View History',
                                    style: TextStyle(color: Colors.red[800]),
                                  ),
                                )
                              ],
                            ),
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      100,
                                    ),
                                    border: Border.all(
                                        color: Colors.red[800], width: 5)),
                                child: SizedBox(
                                  height: 90,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Check In',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red[800],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
//-------------------Announcement Card-------------------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/orange.png'),
              height: 50,
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
              itemBuilder: (context, index) => AnnouncementCard(),
            ),
          ),
//-----------------Birthday Card-----------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/lightgreen.png'),
              height: 50,
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
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) => BirthdayCard()),
          ),
//-----------------Leave Card-----------------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/orange.png'),
              height: 50,
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
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: L_list.length,
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
//-----------------Linear Progress bar---------------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/green.png'),
              height: 50,
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
          Container(
            margin: EdgeInsets.all(10),
            child: LinearBar('Today'),
          ),
//---------------------Events Card---------------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/blue.png'),
              height: 50,
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
              itemBuilder: (context, index) => EventCard(),
            ),
          ),
//----------------------Upcomming Holidays-----------------------
          ListTile(
            leading: Image(
              image: AssetImage('assets/image/lightblue.png'),
              height: 50,
            ),
            title: Text('Upcoming Holiday'),
            trailing: TextButton(
              onPressed: () {},
              child: Text(
                'View',
                style: TextStyle(color: Colors.red[800]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Container(
              height: 230,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) => Holiday_list[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
