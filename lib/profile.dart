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
              color: Colors.white,
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
                  name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Divider(color: Color.fromARGB(255, 192, 192, 192)),
                ProfileDetail(title: '경력', value: experience),
                Divider(color: Color.fromARGB(255, 192, 192, 192)),
                ProfileDetail(title: '부서', value: department),
                Divider(color: Color.fromARGB(255, 192, 192, 192)),
                ProfileDetail(title: '한국어 수준', value: koreanLevel),
                Divider(color: Color.fromARGB(255, 192, 192, 192)),
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
                      backgroundColor: Colors.indigo,
                    ),
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

class ProfileDetail extends StatelessWidget {
  final String title;
  final String value;

  ProfileDetail({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
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