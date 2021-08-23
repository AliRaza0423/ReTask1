import 'dart:io';

import 'package:flutter/material.dart';

class Doted_stepbar extends StatelessWidget {
  Doted_stepbar(this.counter);

  final List<int> steps = [1, 2, 3, 4, 5];
  int counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      // width: 300,
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              child: Divider(
                color: Colors.grey[400],
                thickness: 1,
              ),
            ),
            //---------------Row for vertical Angel bar---------------//
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var step in steps)
                  //-------------Container for customize into Dot-------------//

                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red[800], width: 2),
                        color:
                            step <= counter ? Colors.red[800] : Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
