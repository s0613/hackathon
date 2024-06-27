import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'profile.dart';
import 'idcard.dart';
import 'labormenu.dart';
import 'dart:ui';

class MyHomePageMem extends StatefulWidget {
  @override
  _MyHomePageStateMem createState() => _MyHomePageStateMem();
}

class _MyHomePageStateMem extends State<MyHomePageMem> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SliverAppBar(
        title: Text('CS Company'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              controller: _pageController,
              children: <Widget>[
                ProfilePage(name: "안광윤", experience: "전기", department: "공정 관리", koreanLevel: "하", company: "CS_COMPANY"),
                MenuScreen(),
                InputPage(),
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
