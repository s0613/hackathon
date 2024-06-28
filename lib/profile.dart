import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();
  final TextEditingController _departmentController = TextEditingController();
  final TextEditingController _koreanLevelController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('정보 입력'),
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      backgroundColor: const Color(0xFFF2F2F2),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: '이름'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '이름을 입력해주세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _experienceController,
                  decoration: InputDecoration(labelText: '경력'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '경력을 입력해주세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _departmentController,
                  decoration: InputDecoration(labelText: '부서'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '부서를 입력해주세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _koreanLevelController,
                  decoration: InputDecoration(labelText: '한국어 수준'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '한국어 수준을 입력해주세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _companyController,
                  decoration: InputDecoration(labelText: '근무회사'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '근무회사를 입력해주세요';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(

                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(
                            name: _nameController.text,
                            experience: _experienceController.text,
                            department: _departmentController.text,
                            koreanLevel: _koreanLevelController.text,
                            company: _companyController.text,

                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6D8FA8),
                  ),
                  child: Text('사원증 보기', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ProfilePage extends StatelessWidget {
  final String name;
  final String experience;
  final String department;
  final String koreanLevel;
  final String company;

  ProfilePage({
    required this.name,
    required this.experience,
    required this.department,
    required this.koreanLevel,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'ID CARD',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.perm_contact_cal_outlined),
          onPressed: () {
            print('menu button is clicked');
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InputPage()),
              );
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFFF2F2F2),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 350,
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(3.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/fori.png'),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      name,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ProfileDetail(title: '경력', value: experience),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ProfileDetail(title: '부서', value: department),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ProfileDetail(title: '한국어 수준', value: koreanLevel),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ProfileDetail(title: '근무회사', value: company),
                    SizedBox(height: 20),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => InputPage()),
                            );
                          },
                          child: Icon(Icons.settings, color: Colors.white),
                          backgroundColor: const Color(0xFF6D8FA8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1,
            minChildSize: 0.1,
            maxChildSize: 0.5,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Additional Information',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        AdditionalInfoDetail(title: '입국일로부터의 날짜', value: '500 days'),
                        Divider(color: Colors.grey[300]),
                        AdditionalInfoDetail(title: '근무 기간', value: '2 years'),
                        Divider(color: Colors.grey[300]),
                        AdditionalInfoDetail(title: '비자의 남은 기간', value: '1 year'),
                        Divider(color: Colors.grey[300]),
                        AdditionalInfoDetail(title: '월급까지 남은 시간', value: '15 days'),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  final String title;
  final String value;

  ProfileDetail({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class AdditionalInfoDetail extends StatelessWidget {
  final String title;
  final String value;

  AdditionalInfoDetail({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

