import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('這是登錄頁面'),
          ),
          RaisedButton(
            child: Text('登錄'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
