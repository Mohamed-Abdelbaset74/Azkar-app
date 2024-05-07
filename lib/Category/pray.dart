

import 'package:flutter/cupertino.dart';

class RowPray extends StatelessWidget {
  const RowPray({super.key, required this.pray, required this.time});

  final String pray;
  final String time;


  @override
  Widget build(BuildContext context) {
    return  Row(
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Center(
            child: Text(
              pray,
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffeeeee4),
                  fontWeight: FontWeight.normal,
                  fontFamily: "BowlbyOne"


              ),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Center(
            child: Text(
              '$time',
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xffeeeee4),
                  fontWeight: FontWeight.normal,
                  fontFamily: "BowlbyOne"
              ),
            ),
          ),
        ),
      ],
    );
  }
}

