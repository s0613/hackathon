import 'package:flutter/material.dart';

class InputPage2 extends StatefulWidget {
  @override
  _InputPageState2 createState() => _InputPageState2();
}

class _InputPageState2 extends State<InputPage2> {
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
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.black ,fontWeight: FontWeight.bold),
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
                  decoration: InputDecoration(labelText: '회사 이름'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '회사 이름을 입력해주세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _experienceController,
                  decoration: InputDecoration(labelText: '창립 년도'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '창립 년도를 입력해주세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _departmentController,
                  decoration: InputDecoration(labelText: '전화'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '전화번호를 입력해주세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _koreanLevelController,
                  decoration: InputDecoration(labelText: '규모'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '규모 수준을 입력해주세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _companyController,
                  decoration: InputDecoration(labelText: '위치'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '위치를 입력해주세요';
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
                          builder: (context) => Companyinfoscreen(
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
                  child: Text('회사정보 보기', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Companyinfoscreen  extends StatelessWidget {
  final String name;
  final String experience;
  final String department;
  final String koreanLevel;
  final String company;

  Companyinfoscreen ({
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
            'Company Infomations',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.pending_actions_outlined),
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
                MaterialPageRoute(builder: (context) => InputPage2()),
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
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/com.jpg'),
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
                    CompanyinfoscreenDetail(title: '창립', value: experience),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    CompanyinfoscreenDetail(title: '전화번호', value: department),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    CompanyinfoscreenDetail(title: '규모', value: koreanLevel),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    CompanyinfoscreenDetail(title: '위치', value: company),
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
                              MaterialPageRoute(builder: (context) => InputPage2()),
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
                        AdditionalInfoDetailcom(title: '근로자', value: '3명'),
                        Divider(color: Colors.grey[300]),
                        AdditionalInfoDetailcom(title: '근무 시간', value: '09:00 - 14:00'),
                        Divider(color: Colors.grey[300]),
                        AdditionalInfoDetailcom(title: '잡포유와 가입기간', value: '130일'),
                        Divider(color: Colors.grey[300]),
                        AdditionalInfoDetailcom(title: '직원 급여지급일', value: '매월 15일'),
                        Divider(color: Colors.grey[300]),
                        AdditionalInfoDetailcom(title: '인센티브 유무', value: '유'),
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

class CompanyinfoscreenDetail extends StatelessWidget {
  final String title;
  final String value;

  CompanyinfoscreenDetail({required this.title, required this.value});

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

class AdditionalInfoDetailcom extends StatelessWidget {
  final String title;
  final String value;

  AdditionalInfoDetailcom({required this.title, required this.value});

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

