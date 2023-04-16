import 'package:flutter/material.dart';



class ButtomNavbar extends StatelessWidget {

  PageController  controller;

   ButtomNavbar({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BottomAppBar(
      color: Colors.orange,
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(

              width: MediaQuery.of(context).size.width/2-20,
              height: 50,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             IconButton(
               onPressed: (){
                controller.animateToPage(0, duration: Duration(milliseconds: 900), curve: Curves.easeInQuad);
               },
               icon: Icon(Icons.home),
             ),
             IconButton(
               onPressed: (){
                 controller.animateToPage(1, duration: Duration(milliseconds: 900), curve: Curves.easeInOutCubic);
               },
               icon: Icon(Icons.person),
             ),
           ],

              )
            ),
            SizedBox(

              width: MediaQuery.of(context).size.width/2-20,
              height: 50,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: (){
                        controller.animateToPage(2, duration: Duration(milliseconds: 900), curve: Curves.ease);
                      },
                      icon: Icon(Icons.shopping_basket),
                    ),
                    IconButton(
                      onPressed: (){
                        controller.animateToPage(3, duration: Duration(milliseconds: 900), curve: Curves.slowMiddle);
                      },
                      icon: Icon(Icons.settings),
                    ),
                  ],

                )
            ),
          ],
        ),

      ),
    );
  }
}
