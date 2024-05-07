

import 'package:flutter/material.dart';

class TasbeehScreen extends StatefulWidget {
  const TasbeehScreen({super.key});

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {


  List<String> tasbeh = [
    "سُبْحَانَ اللَّهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ",
    "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ",
    "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ",
    "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ",
    "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ ",
    "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",
    "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد",
    "أستغفر الله ",
    "سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ",
    "لَا إِلَهَ إِلَّا اللَّهُ",
    "الْلَّهُ أَكْبَرُ",
    "سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، وَلا إِلَهَ إِلا اللَّهُ ، وَاللَّهُ أَكْبَرُ ، اللَّهُمَّ اغْفِرْ لِي ، اللَّهُمَّ ارْحَمْنِي ، اللَّهُمَّ ارْزُقْنِي.",
    "الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ",
    "اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً.",
    "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ , وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ , اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ.",
  ];


    int Counter = 0 ;
    int Currentnum = 0 ;

   int Step = 0 ;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Color(0xffe28743),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0,left: 5,right: 5,bottom: 10),
              child: Stack(
                 children: [
                   Container(
                     alignment: Alignment.center,
                     height: 200,
                     width: double.infinity,

                     decoration: BoxDecoration(
                       color: Color(0xffeab676),
                       borderRadius: BorderRadius.circular(30),
                     ),

                     child: ListView.builder(
                       shrinkWrap: true,
                       itemCount: 1,
                       itemBuilder: (context, index) {
                         return Center(
                           child: Padding(
                             padding: const EdgeInsets.only(
                               right: 10.0,
                               left: 10.0,
                               bottom: 16.0,
                             ),
                             child: Text(
                               tasbeh[Counter],
                               textAlign: TextAlign.center,
                               style:  TextStyle(
                                 fontSize: 20,
                                 fontFamily: "BowlbyOne",
                                 fontWeight: FontWeight.normal,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         );
                       },
                     ),

                   ),
                   Positioned(
                     top: 0,
                     bottom: 0,
                     left: 0,
                     child: IconButton(
                       icon: const Icon(
                         Icons.arrow_back,
                         color: Colors.white,
                       ),
                       onPressed: () {
                         setState(() {
                           if (Counter > 0) {
                             Counter--;
                           } else {
                             Counter = tasbeh.length - 1;
                           }
                         });


                       },
                     ),
                   ),

                   Positioned(
                     top: 0,
                     bottom: 0,
                     right: 0,
                     child: IconButton(
                       icon: const Icon(
                         Icons.arrow_forward,
                         color: Colors.white,
                       ),
                       onPressed: () {
                         setState(() {
                           if (Counter < tasbeh.length - 1) {
                             Counter++;
                           } else {
                             Counter = 0;
                           }
                         });
                       },
                     ),
                   ),

                 ],
              ),
            ),

            Text(
              '$Currentnum / 32',
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontFamily: "BowlbyOne"),
            ),
            Text(
              'Round  ${Step == 0 ? '' : Step}',
              style:  TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontFamily: "BowlbyOne"),
            ),


            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  Counter = 0 ;
                  Currentnum = 0 ;
                });
              }, child: Text('Reset',
              ),
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,

                ),


              ),
            ),


            GestureDetector(
              onTap: (){
                setState(() {
                  if(Currentnum < 32){
                    Currentnum++;
                  }else{
                    Currentnum = 1;

                  }
                });

                setState(() {

                  if (Currentnum % 32 == 0) {
                    Step++;
                  } else {

                  }
                  });

              },
              child: CircleAvatar(
                radius: 140,
                backgroundColor: Color(0xff873e23),
                child: Text('سبح',
                  style:  TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "BowlbyOne"),


                ),

              ),
            ),
          ],
        ),

      ),
    );
  }
}
