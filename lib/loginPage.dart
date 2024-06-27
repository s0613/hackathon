import 'package:flutter/material.dart';
import 'homepage_1.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 0), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child : Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Image.asset('assets/images/loading.png'),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _validateAndLogin(BuildContext context, String userType) {
    if (_formKey.currentState?.validate() ?? false) {
      if (userType == 'boss') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHomePageMem()),
        );
      } else if (userType == 'member') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHomePageMem()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인', style: TextStyle(color: Colors.white),),

        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: '아이디',
                  prefixIcon: Icon(Icons.person, color: Colors.blueGrey),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.blueGrey),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '아이디를 입력하세요';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: '비밀번호',
                  prefixIcon: Icon(Icons.lock, color: Colors.blueGrey),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.blueGrey),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '비밀번호를 입력하세요';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _validateAndLogin(context, 'boss'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 18, color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text('사장님으로 로그인', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => _validateAndLogin(context, 'member'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 18, color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text('회원으로 로그인', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 16),
              TextButton(
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text('회원가입', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              Text(
                '아이디 / 비밀번호 찾기',
                style: TextStyle(decoration: TextDecoration.underline, color: Colors.blueGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('회원가입'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('회원가입 페이지', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
