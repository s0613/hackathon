import 'package:flutter/material.dart';
import 'menuForboss.dart';
import 'companyInfoScreen.dart';
import 'employList.dart';

class Hompageboss extends StatefulWidget {
  @override
  _Hompageboss  createState() => _Hompageboss();
}

class _Hompageboss extends State<Hompageboss > {
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
                Companyinfoscreen(name: "배철수 포도 농장", experience: "1998년", department: "031-1111-1111", koreanLevel: '소규모', company: "경상북도 영주"),
                Employlist(),
                Menuforboss(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
