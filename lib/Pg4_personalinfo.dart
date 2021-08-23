import 'package:flutter/material.dart';

class Personalinfo_Pg4 extends StatefulWidget {
  @override
  _Personalinfo_Pg4State createState() => _Personalinfo_Pg4State();
}

class _Personalinfo_Pg4State extends State<Personalinfo_Pg4> {
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          // SizedBox(
          //   height: 60,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     IconButton(
          //         icon: Icon(Icons.arrow_back),
          //         onPressed: () {
          //           Navigator.of(context).pop();
          //         }),
              Text('Personal Information', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),),
              // SizedBox(
              //   width: 25,
              // ),
          //   ],
          // ),
          Stack(children: [
            ClipRRect(
              child: Image(
                  image: AssetImage('assets/image/user-image.png')),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red[800],
                  ),
                  child: Icon(
                    Icons.edit,
                    size: 25,
                    color: Colors.white,
                  ),
                )),
          ]),
          Text(
            'Name here',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Front-end & UI',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
//  -------------------------textfields-------------------------
          TextFormField(
              decoration: InputDecoration(
                  hintText: 'Your Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      )))),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              decoration: InputDecoration(
                  hintText: 'Father Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      )))),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      )))),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Phone',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: Colors.transparent, width: 0),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ))),
            keyboardType: TextInputType.number,
            validator: (value) {
              final regExp = RegExp('[0-9]');
              if (!regExp.hasMatch(value)) {
                return 'Enter only number';
              } else {
                return null;
              }
            },
          ),
//----------------------drop downs-----------------------
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                dropdownColor: Colors.white,
                hint: Text(
                  'Gender',
                  style: TextStyle(color: Colors.grey),
                ),
                onChanged: (String newValue) {
                  //   setState(() {
                  //     dropdownValue = newValue;
                  //   });
                },
                items: <String>['Male', 'Female', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                dropdownColor: Colors.white,
                hint: Text(
                  'Marital status',
                  style: TextStyle(color: Colors.grey),
                ),
                onChanged: (String newValue) {
                  //   setState(() {
                  //     dropdownValue = newValue;
                  //   });
                },
                items: <String>['Single', 'Married']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
//----------------------Date picker----------------------------
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Date of Birth'),
                IconButton(
                    icon: Icon(Icons.today),
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          initialDate: DateTime(2005),
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now());
                    })
              ],
            ),
          ),
//------------------------Buttons------------------------
          // TextButton(
          //     onPressed: () {},
          //     child: Text(
          //       'Skip',
          //       style: TextStyle(color: Colors.red[800]),
          //     )),
          // FractionallySizedBox(
          //   widthFactor: 1,
          //   child: ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         primary: Colors.red[800],
          //         padding: EdgeInsets.symmetric(
          //           vertical: 15,
          //         ),
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //       ),
          //       onPressed: () {
          //         Navigator.of(context).push(MaterialPageRoute(
          //             builder: (context) => Experience_Pg5()));
          //       },
          //       child: Text(
          //         'Next',
          //         style: TextStyle(color: Colors.white),
          //       )),
          // )
        ],
      ),
    );
  }
}
