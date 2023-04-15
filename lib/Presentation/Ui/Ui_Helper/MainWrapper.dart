import 'package:flutter/material.dart';
import 'package:flutterfexam/Presentation/Ui/Ui_Helper/HomePage.dart';
import 'package:flutterfexam/Presentation/Ui/Ui_Helper/MarketViewPage.dart';
import 'package:flutterfexam/Presentation/Ui/Ui_Helper/ProfilePage.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({Key? key}) : super(key: key);

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {

  PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
floatingActionButton: FloatingActionButton(onPressed: (){},),
      body: PageView(
        controller: _myPage,
        children: [
          HomePage(),
          MarketViewPage(),
          ProfilePage()
        ],
      ),
    );
  }
}
