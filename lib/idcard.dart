import 'package:flutter/material.dart';


class IDCardPage extends StatefulWidget {
  @override
  _IDCardPageState createState() => _IDCardPageState();
}

class _IDCardPageState extends State<IDCardPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _idNumber = '';
  String _address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("사원증")
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/refer.jpeg'), // 사용자의 증명 사진 경로
              ),
              SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Name'),
                      initialValue: _name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        setState(() {
                          _name = value!;
                        });
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'ID Number'),
                      initialValue: _idNumber,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your ID number';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        setState(() {
                          _idNumber = value!;
                        });
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Address'),
                      initialValue: _address,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        setState(() {
                          _address = value!;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Information saved')),
                          );
                        }
                      },
                      child: Text('Save'),

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