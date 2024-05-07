
import 'package:azkaar/splachscreen.dart';
import 'package:azkaar/tasbeehscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Material extends StatelessWidget {
  const Material({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplachScreen(),
    );
  }
}
