import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Ui_Helper/HomePageView.dart';

class HomePage extends StatefulWidget {

   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController=PageController(
    initialPage: 0
  );

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
                         HomePageView(controller: _pageController,),
                         Align(
                           alignment: Alignment.bottomCenter,
                           child:SmoothPageIndicator(
                             onDotClicked: (index)=>_pageController.animateToPage(index, duration: Duration(milliseconds: 400), curve: Curves.bounceInOut),
                             controller:_pageController,
                             count:  4,
                             effect:  ExpandingDotsEffect(
                               dotWidth: 10,
                               dotHeight: 10
                             ),
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
