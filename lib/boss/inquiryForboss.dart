import 'package:flutter/material.dart';
import '../chatScreen.dart';


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
        title: Text('자주하는 질문', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xffffffff),
      ),
      backgroundColor: const Color(0xFFF2F2F2),
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
                  title: 'Q3: 노동자가 근로 시간을 안지켜요!',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요!',
                ),
                CustomExpansionTile(
                  title: 'Q4: 무단 결근이 심한 근로자를 어떻게 하죠?',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요! 관련 법률 상담을 도와드려요!',
                ),
                CustomExpansionTile(
                  title: 'Q5: 어쩔 수 없는 사정으로 급여지급이 힘들어요!',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요! 관련 법률 상담을 도와드려요!',
                ),
                CustomExpansionTile(
                  title: 'Q6: 갑자기 사라진 근로자로 인해 어려움을 겪어요!',
                  answer: '근로자 요청으로 신뢰도 있는 근로자를 알선해 드려요.',
                ),
                CustomExpansionTile(
                  title: 'Q7: 성추행을 안했는데 했다고 여근로자가 협박합니다.',
                  answer: 'AI 챗 서비스 상담을 이용해 주세요!',
                ),
                CustomExpansionTile(
                  title: 'Q8: 근로자가 부족해요!',
                  answer: '근로자 요청 창을 찾아주세요!',
                ),
                CustomExpansionTile(
                  title: 'Q9: 구독료가 얼마나 되나요?',
                  answer: '근로자와 사용자의 계약금의 7%를 받습니다!',
                ),
                CustomExpansionTile(
                  title: 'Q10: 근로자가 도망가면 어떻게하죠?',
                  answer: '한글과 문화 적응이 된 근로자들을 엄선해 소개 시켜드립니다!',
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
              backgroundColor: const Color(0xFF6D8FA8),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              textStyle: TextStyle(fontSize: 24, color: Colors.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text('문의하기', style: TextStyle(color: Colors.white)),

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
        child: Icon(Icons.hub_outlined, color: Colors.white,),
        backgroundColor: const Color(0xFF6D8FA8),
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