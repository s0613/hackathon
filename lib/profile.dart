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
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
      ),
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
                  child: Text('사원증 보기'),
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
        title: Text('사원증'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 350,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(20.0),
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
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/refer.jpeg'),
                ),
                SizedBox(height: 20),
                Text(
                  '이름: $name',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '경력: $experience',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '부서: $department',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '한국어 수준: $koreanLevel',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '근무회사: $company',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 70,),
                Positioned(
                  bottom: 8.0,
                  right: 8.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InputPage()),
                      );
                    },
                    child: Icon(Icons.settings, color: Colors.indigo,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
