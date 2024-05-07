

import 'package:flutter/material.dart';

class AsmaaCategory extends StatelessWidget {
   AsmaaCategory({
    super.key,
    required this.text,
  });
  final String text;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 22,
              fontFamily: "BowlbyOne",
              color: Colors.white,
              fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,

            ),
          ),
        ),

         Divider(
          thickness: 1,
          indent: 80,
          endIndent: 80,
           color: Colors.black,
        ),

      ],
    );
  }
}
