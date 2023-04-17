import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  var controller;

  HomePageView({Key? key, required this.controller}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  var images = [
    'images/a1.png',
    'images/a2.png',
    'images/a3.png',
    'images/a4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      controller: widget.controller,
      children: [
        myPage(images[0]),
        myPage(images[1]),
        myPage(images[2]),
        myPage(images[3]),
      ],
    );
  }

  Widget myPage(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(right: 2.0),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
