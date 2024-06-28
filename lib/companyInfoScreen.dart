import 'package:flutter/material.dart';

class CompanyInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crazy Space'),
        backgroundColor: Colors.blueGrey[700],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 16.0),
              height: 200,
              color: Colors.grey,
              child: Center(
                child: Image.asset(
                  'assets/images/CS_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              '회사 소개: CS는 Crazy Space에 앞글자를 딴 것으로 우주에 의해 모인 인재 집단이다.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '연혁: 2023년 아이바스, 아미고에서 탄생했다',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '비전 및 목표: 외국인들이 한국에서 더 나은 삶을 영위할 수 있도록 돕는다.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '월급: 0원',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
