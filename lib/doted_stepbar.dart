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

                  Icon(
                    step <= counter
                        ? Icons.fiber_manual_record
                        : Icons.fiber_manual_record_outlined,
                    color: Colors.red[800],
                    size: 15,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
