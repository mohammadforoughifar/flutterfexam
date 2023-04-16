import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  var controller;
   HomePage({Key? key,required this.controller}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
                 Padding(
                     padding: EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
                   child: SizedBox(
                     height: 160,
                     width: double.infinity,
                     child: Stack(
                       children: [
                        // HomePageView(),
                         Align(
                           alignment: Alignment.bottomCenter,
                           child:AnimatedSmoothIndicator(
                             activeIndex: controll,
                             count:  6,
                             effect:  WormEffect(),
                           )   ,
                         )
                       ],

                     ),
                   ),


                 )
            ],
          ),
        ),
      ),
    );
  }
}
