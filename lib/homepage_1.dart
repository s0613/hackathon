import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'profile.dart';
import 'idcard.dart';
import 'labormenu.dart';
import 'dart:ui';
import 'businesslistpage.dart';

class MyHomePageMem extends StatefulWidget {
  @override
  _MyHomePageStateMem createState() => _MyHomePageStateMem();
}

class _MyHomePageStateMem extends State<MyHomePageMem> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              controller: _pageController,
              children: <Widget>[
                ProfilePage(name: "Mickeyna", experience: "2년", department: "포장", koreanLevel: '중급', company: "CS_com"),
                BusinessListPage(),
                MenuScreen(),

              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            // effect: WormEffect(),
          ),
        ],
      ),
    );
  }
}
