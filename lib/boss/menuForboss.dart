import 'package:flutter/material.dart';
import 'inquiryForboss.dart';


class Menuforboss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFFFFFFFF),

      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xFFF2F2F2), // AppBar 배경색 HEX로 설정
            pinned: true,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Menu',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                print('menu button is clicked');
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF), // body 배경색 HEX로 설정
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Divider(),
                    MenuItem(
                      icon: Icons.question_answer_outlined,
                      label: '문의 및 상담',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QnAPage()),
                        );
                      },
                    ),
                    CustomDivider(),
                    MenuItem(
                      icon: Icons.edit_calendar_outlined,
                      label: '출석 관리',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page2()),
                        );
                      },
                    ),
                    CustomDivider(),
                    MenuItem(
                      icon: Icons.workspaces_outline,
                      label: '근로자 요청',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page3()),
                        );
                      },
                    ),
                    CustomDivider(),
                    MenuItem(
                      icon: Icons.paste_outlined,
                      label: '구독권',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page4()),
                        );
                      },
                    ),
                    CustomDivider(),
                    MenuItem(
                      icon: Icons.feedback_outlined,
                      label: '문제 신고',
                      onPressed: () {
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
      width: MediaQuery.of(context).size.width * 0.9,
      color: Colors.grey,
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
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black),
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