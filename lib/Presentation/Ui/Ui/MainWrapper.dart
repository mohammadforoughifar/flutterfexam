import 'package:flutter/material.dart';
import 'package:flutterfexam/Presentation/Ui/Ui_Helper/ButtomNav.dart';
import 'package:flutterfexam/Presentation/Ui/Ui/HomePage.dart';
import 'package:flutterfexam/Presentation/Ui/Ui/MarketViewPage.dart';
import 'package:flutterfexam/Presentation/Ui/Ui/ProfilePage.dart';

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
floatingActionButton: FloatingActionButton(
  onPressed: (){},
  child: Icon(Icons.compare_arrows_outlined),
),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ButtomNavbar(controller: _myPage),
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
