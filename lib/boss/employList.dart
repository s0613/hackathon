import 'package:flutter/material.dart';


class Employlist extends StatelessWidget {
  final List<Map<String, String>> businessList = [
    {
      "image": "https://cdn-icons-png.flaticon.com/512/3106/3106773.png",
      "name": "스티브",
      "age": "29",
      "task": "출고",
      "nation": "아르헨티나",
      "culture": "아르헨티나",

    },
    {
      "image": "https://cdn-icons-png.flaticon.com/512/3106/3106773.png",
      "name": "은우옌 탄",
      "age": "43",
      "task": "포장",
      "nation": "베트남",
      "culture": "베트남",

    },
    {
      "image": "https://cdn-icons-png.flaticon.com/512/3106/3106773.png",
      "name": "스리아 무니",
      "age": "22",
      "task": "포장",
      "nation": "인도네시아",
      "culture": "인도네시아",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/512/3106/3106773.png",
      "name": "스니부루냐",
      "age": "29",
      "task": "수확",
      "nation": "베트남",
      "culture": "베트남",

    },
  ];

  final List<Map<String, String>> newsList = [
    {
      "image": "data:image/jpeg;base64,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",
      "title": "외국인근로자 임금 감당못해… ",
      "description": "뿌리가 말라가는 뿌리산업",
    },
    {
      "image": "https://file2.nocutnews.co.kr/newsroom/image/2024/06/26/202406261347584795_0.jpg",
      "title": "화성 아리셀공장 화재사고, 시와 경기도가 전폭 지원",
      "description": "화성 아리셀공장 화재사고, 시와 경기도가 전폭 지원",
    },
    {
      "image": "https://news.kbs.co.kr/data/fckeditor/new/image/2023/06/14/310691685517702165.jpg",
      "title": "외국인이 내국인보다 범죄를 많이 저지를까? [팩트체크K]",
      "description": "외국인이 내국인보다 범죄를 많이 저지를까? [팩트체크K]",
    },
    {
      "image": "https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202405/01/dd7f51cd-e766-423d-9d50-e8cfb98963f1.jpg",
      "title": "[외노자 52만명, 공존의 시대]",
      "description": "외국인노동자 25만명…'3D 업종' 일꾼? 이제는 사장님 됐다",
    },
    // 추가 뉴스 기사 항목들...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
        backgroundColor: Color(0xFFF2F2F2),
        leading: IconButton(
          icon: Icon(Icons.task, color: Colors.black),
          onPressed: () {
            print('menu button is clicked');
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for jobs...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: businessList.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Card의 모서리를 둥글게 설정
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Image.network(businessList[index]['image']!),
                      title: Text(businessList[index]['name']!),
                      subtitle: Text(
                        'task: ${businessList[index]['task']!}\n'
                            'nation: ${businessList[index]['nation']!}\n'
                            'culture: ${businessList[index]['culture']!}',
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF6D8FA8),
        onPressed: () => _showNewsModal(context),
        child: Icon(Icons.article, color: const Color(0xFFFFFFFF)),
      ),
      backgroundColor: const Color(0xFFF2F2F2),
    );
  }

  void _showNewsModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView.builder(
          itemCount: newsList.length * 2 - 1, // Divider 포함을 위해 아이템 개수를 2배로 설정
          itemBuilder: (context, index) {
            // 짝수 인덱스일 때 ListTile 반환, 홀수 인덱스일 때 Divider 반환
            if (index.isOdd) {
              return Divider();
            }
            final newsIndex = index ~/ 2; // 실제 뉴스 리스트 인덱스 계산
            return ListTile(
              leading: Image.network(newsList[newsIndex]['image']!),
              title: Text(newsList[newsIndex]['title']!),
              subtitle: Text(newsList[newsIndex]['description']!),
            );
          },
        );
      },
    );
  }
}