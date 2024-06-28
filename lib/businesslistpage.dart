import 'package:flutter/material.dart';

class BusinessListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2), // 전체 배경색 설정
      body: Column(
        children: [
          Container(
            color: Colors.white, // AppBar 배경색 HEX로 설정
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.white,
                    title: Align(
                      alignment: Alignment.centerLeft, // 앱바 타이틀을 왼쪽 정렬로 설정
                      child: Text(
                        'Menu',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    leading: IconButton(
                      icon: Icon(Icons.maps_home_work_outlined, color: Colors.black),
                      onPressed: () {
                        print('menu button is clicked');
                      },
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://i.pinimg.com/736x/bc/d3/e0/bcd3e0ad21772774f90e699778aea46b.jpg'), // Replace with actual user image URL
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '지역 일자리를 검색하세요!',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white, // 검색 창 배경색을 흰색으로 설정
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2), // body 배경색 HEX로 설정
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.only(top: 16.0),
                children: [
                  BusinessCard(
                    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJejcO9poeGELpRjAxrZ0kRhUP-IjFDY0pcw&s',
                    name: '강원도 태백 배추 공장',
                    foreignWorkers: 15,
                    businessType: "식품",
                  ),
                  BusinessCard(
                    imageUrl: 'https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202405/01/dd7f51cd-e766-423d-9d50-e8cfb98963f1.jpg/_ir_/resize/1280',
                    name: 'Sahid Raya Hotel',
                    foreignWorkers: 10,
                    businessType: 'Hospitality',
                  ),
                  // Add more BusinessCard widgets here
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BusinessCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int foreignWorkers;
  final String businessType;

  BusinessCard({
    required this.imageUrl,
    required this.name,
    required this.foreignWorkers,
    required this.businessType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white, // 카드 배경색을 흰색으로 설정
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4,
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(name),
          subtitle: Text('Foreign Workers: $foreignWorkers\nBusiness Type: $businessType'),
        ),
      ),
    );
  }
}