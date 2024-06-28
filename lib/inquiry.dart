import 'package:flutter/material.dart';
import 'chatScreen.dart';


class InquiryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('문의하기'),
        backgroundColor: Colors.black12
        ,
      ),
      backgroundColor: Colors.black12,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '문의사항을 입력해주세요:',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 8),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: '여기에 입력하세요',
                hintStyle: TextStyle(color: Colors.black12),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white54),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('문의사항이 전송되었습니다.')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 18, color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('전송', style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QnAPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('자주하는 질문', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xffd9eae8),
      ),
      backgroundColor: const Color(0xffd9eae8),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: <Widget>[
                CustomExpansionTile(
                  title: 'Q1: 이 앱은 무엇을 하나요?',
                  answer: '이 앱은 로그인 및 회원가입 기능을 제공합니다.',
                ),
                CustomExpansionTile(
                  title: 'Q2: 어떻게 회원가입 하나요?',
                  answer: '로그인 페이지에서 회원가입 버튼을 누르면 됩니다.',
                ),
                CustomExpansionTile(
                  title: 'Q3: 임금체불 문제는 어디서 상담하나요?',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요!',
                ),
                CustomExpansionTile(
                  title: 'Q4: 사장님이 근무시간 외에도 근무를 시켜요.',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요!',
                ),
                CustomExpansionTile(
                  title: 'Q5: 사장님이 근무시간 외에도 근무를 시켜요.',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요!',
                ),
                CustomExpansionTile(
                  title: 'Q6: 사장님이 근무시간 외에도 근무를 시켜요.',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요!',
                ),
                CustomExpansionTile(
                  title: 'Q7: 사장님이 근무시간 외에도 근무를 시켜요.',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요!',
                ),
                CustomExpansionTile(
                  title: 'Q8: 사장님이 근무시간 외에도 근무를 시켜요.',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요!',
                ),
                CustomExpansionTile(
                  title: 'Q9: 사장님이 근무시간 외에도 근무를 시켜요.',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요!',
                ),
                CustomExpansionTile(
                  title: 'Q10: 사장님이 근무시간 외에도 근무를 시켜요.',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요!',
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InquiryPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white30,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              textStyle: TextStyle(fontSize: 18, color: Colors.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text('문의하기'),
          ),
          SizedBox(height: 16.0),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatScreen()),
          );
        },
        child: Icon(Icons.hub_outlined),
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String answer;

  const CustomExpansionTile({
    Key? key,
    required this.title,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            // borderRadius: BorderRadius.circular(12.0), // 라운드 처리
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              backgroundColor: Colors.white12,
              title: Text(
                title,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              children: <Widget>[
                Divider(
                  height: 1,
                  color: Colors.grey, // Divider의 색상
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    answer,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey, // Divider의 색상
          ),
        ],
      ),
    );
  }
}