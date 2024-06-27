import 'package:flutter/material.dart';
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
            '메뉴',
            style: TextStyle(fontWeight: FontWeight.bold),
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
                    label: '상담',
                    description: '자주하는 질문 및 상담',
                    onPressed: () {
                      // Menu 1 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                  ),
                  MenuItem(
                    label: '출석',
                    description: '출석 및 월급 계산',
                    onPressed: () {
                      // Menu 2 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    },
                  ),
                  MenuItem(
                    label: '희망 근무지',
                    description: '희망 직무 및 근무지 신청',
                    onPressed: () {
                      // Menu 3 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page3()),
                      );
                    },
                  ),
                  MenuItem(
                    label: '비자',
                    description: '체류 기간 및 남은 체류 기간',
                    onPressed: () {
                      // Menu 4 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page4()),
                      );
                    },
                  ),
                  MenuItem(
                    label: '문제 신고',
                    description: '문제 발생 시 신고',
                    onPressed: () {
                      // Menu 5 동작
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page5()),
                      );
                    },
                  ),
                  MenuItem(
                    label: '문의사항',
                    description: '문제 발생 시 신고',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QnAPage()),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 16.0,
                    right: 16.0,
                    child: FloatingActionButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('AI 채팅 서비스로 이동합니다...')),
                        );
                      },
                      child: Icon(Icons.chat),
                    ),
                  ),
                ],
              ),
            ),

          ),
          Divider(),
        ],
      ),
    );
  }
}


class MenuItem extends StatelessWidget {
  final String label;
  final String description;
  final VoidCallback onPressed;

  MenuItem({required this.label, required this.description, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            backgroundColor: Colors.white,  // 버튼 배경을 하얗게 설정
            side: BorderSide(color: Colors.black, width: 1.0),  // 버튼에 검은색 경계선을 추가
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,  // 네모 모양으로 설정
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),  // 텍스트를 검정색으로 설정
                ),
                SizedBox(height: 6.0),
                Text(
                  description,
                  style: TextStyle(fontSize: 14.0, color: Colors.black),  // 텍스트를 검정색으로 설정
                ),
              ],
            ),
          ),
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