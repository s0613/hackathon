import 'package:flutter/material.dart';
import 'homepage_1.dart'; // Import your home page for member login
import 'boss/hompage_2.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
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
      child: Scaffold(
        backgroundColor:  const Color(0xFF6D8FA8),
        body: Center(
          child: Image.asset('assets/images/CS_logo.png'),
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
          MaterialPageRoute(builder: (context) => Hompageboss()),
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
        title: Text('로그인', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF6D8FA8),
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
                  prefixIcon: Icon(Icons.person, color: const Color(0xFF6D8FA8)),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: const Color(0xFF6D8FA8)),
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
                  prefixIcon: Icon(Icons.lock, color: const Color(0xFF6D8FA8),),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: const Color(0xFF6D8FA8),),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '비밀번호를 입력하세요';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => _validateAndLogin(context, 'boss'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6D8FA8),
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          textStyle: TextStyle(fontSize: 18, color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Text('고용자 로그인', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => _validateAndLogin(context, 'member'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6D8FA8),
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          textStyle: TextStyle(fontSize: 18, color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Text(' 로그인', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF6D8FA8),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text('회원가입', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      '아이디 / 비밀번호 찾기',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: const Color(0xFF6D8FA8),
                      ),
                    ),
                  ],
                ),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('회원가입'),
        backgroundColor: const Color(0xFF6D8FA8),
      ),
      body: Center(
        child: Text('회원가입 페이지', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}

// class MyHomePageMem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('회원 메인 페이지'),
//         backgroundColor: const Color(0xFF6D8FA8),
//       ),
//       body: Center(
//         child: Text('회원 메인 페이지', style: TextStyle(color: Colors.black)),
//       ),
//     );
//   }
// }
