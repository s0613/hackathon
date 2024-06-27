import 'package:flutter/material.dart';
import 'package:myapp/chatScreen.dart';
import 'inquiry.dart';


class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.centerLeft,  // 앱바 타이틀을 왼쪽 정렬로 설정
          child: Text(
            'Menu',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      backgroundColor: Colors.white,  // 전체 배경을 하얗게 설정
      body: Column(
        children: [
          Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MenuItem(
                    icon: Icons.question_answer,
                    label: '문의 및 상담',
                    onPressed: () {
                      // Menu 1 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QnAPage()),
                      );
                    },
                  ),
                  CustomDivider(),
                  MenuItem(
                    icon: Icons.calendar_today,
                    label: '출석',
                    onPressed: () {
                      // Menu 2 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    },
                  ),
                  CustomDivider(),
                  MenuItem(
                    icon: Icons.work,
                    label: '희망 근무지',
                    onPressed: () {
                      // Menu 3 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page3()),
                      );
                    },
                  ),
                  CustomDivider(),
                  MenuItem(
                    icon: Icons.assignment,
                    label: '비자',
                    onPressed: () {
                      // Menu 4 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page4()),
                      );
                    },
                  ),
                  CustomDivider(),
                  MenuItem(
                    icon: Icons.report_problem,
                    label: '문제 신고',
                    onPressed: () {
                      // Menu 5 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page5()),
                      );
                    },
                  ),
                  CustomDivider(),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 1.0,
      width: MediaQuery.of(context).size.width * 0.9, // 가로 길이를 설정
      color: Colors.grey, // 색상을 설정
    );
  }
}
class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  MenuItem({required this.icon, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.black),
            SizedBox(width: 16.0),
            Text(
              label,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
// 각 페이지에 대한 간단한 예제입니다.
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Text('This is Page 1'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('This is Page 2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Text('This is Page 3'),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Text('This is Page 3'),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Text('This is Page 3'),
      ),
    );
  }
}