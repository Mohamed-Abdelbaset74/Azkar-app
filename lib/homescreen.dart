import 'dart:async';

import 'package:azkaar/asmaaallah.dart';
import 'package:azkaar/tasbeehscreen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Category/partview.dart';
import 'Category/pray.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _prayerName = '';
  var curentTime;


  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      updateTime();
    });
  }

  void updateTime() {
    var now = DateTime.now();
    var format = DateFormat.jms().format(now);
    setState(() {
      curentTime = format.toString();
      _prayerName = getPrayerName(now);
    });
  }


  String getPrayerName(DateTime currentTime) {
    // Define prayer times
    final fajrStart =
    DateTime(currentTime.year, currentTime.month, currentTime.day, 4, 21);
    final sunrise =
    DateTime(currentTime.year, currentTime.month, currentTime.day, 5, 51);
    final dhuhrStart =
    DateTime(currentTime.year, currentTime.month, currentTime.day, 12, 0);
    final asrStart =
    DateTime(currentTime.year, currentTime.month, currentTime.day, 15, 31);
    final maghribStart =
    DateTime(currentTime.year, currentTime.month, currentTime.day, 18, 12);
    final ishaStart =
    DateTime(currentTime.year, currentTime.month, currentTime.day, 19, 30);

    if (currentTime.isAfter(ishaStart) || currentTime.isBefore(fajrStart)) {
      return 'Fajr';
    } else if (currentTime.isAfter(fajrStart) &&
        currentTime.isBefore(sunrise)) {
      return 'Sunrise';
    } else if (currentTime.isAfter(sunrise) &&
        currentTime.isBefore(dhuhrStart)) {
      return 'Dhur';
    } else if (currentTime.isAfter(dhuhrStart) &&
        currentTime.isBefore(asrStart)) {
      return 'Asr';
    } else if (currentTime.isAfter(asrStart) &&
        currentTime.isBefore(maghribStart)) {
      return 'Magreb';
    } else {
      return 'Ashaa';
    }
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return false;
      },
      child:  Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/home.jpeg",
                ),
                fit: BoxFit.cover,
              )
          ),


          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Column(
                children: [
                  Text(
                    '$curentTime',
                    style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontFamily: "BowlbyOne"),
                  ),

                  SizedBox(height: 10,),

                  Text(
                    _prayerName,
                    style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontFamily: "BowlbyOne"
                    ),
                  ),


                  SizedBox(height: 10,),




                  Container(
                    height: 200,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: Color(0xff9c682e),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [

                        RowPray(
                          pray: 'Fajr',
                          time: '4:17 AM',
                        ),
                        RowPray(
                          pray: 'Sunrise',
                          time: '5:45 AM',
                        ),
                        RowPray(
                          pray: 'Dhur',
                          time: '11:59 PM',
                        ),
                        RowPray(
                          pray: 'Asr',
                          time: '3:31 pM',
                        ),
                        RowPray(
                          pray: 'Magreb',
                          time: '6:14 pM',
                        ),
                        RowPray(
                          pray: 'Ashaa',
                          time: '7:33 PM',
                        ),


                      ],

                    ),


                  ),


                  SizedBox(height: 50,),

                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(child: ImageView(image: "assets/images/adeia.jpg", text: "ادعيه"),
                          onTap: (){

                          },),

                        SizedBox(width: 35,),

                        GestureDetector(child: ImageView(image: "assets/images/sebha.jpg",text: "سبحه",),
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => TasbeehScreen()));

                          },),

                        SizedBox(width: 35,),

                        GestureDetector(child: ImageView(image: "assets/images/asmaa.png",text: "الاسماء الحسني",),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AsmaaAallah()));


                          },),



                      ],
                    ),
                  ),







                ],
              ),
            ),
          ),





        ),

      ),
    );





  }
}
