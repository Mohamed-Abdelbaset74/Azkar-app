

import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.image, required this.text, });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:
      [
        Column(
          children: [

            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(image),

            ),

            SizedBox(height: 7,),

            Text(text,
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: "BowlbyOne"


                ),),




          ],

        ),





      ],
    );
  }
}