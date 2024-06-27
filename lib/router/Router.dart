import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/music/Search.dart';
import 'package:flutterapp/music/Home.dart';
import 'package:flutterapp/music/Library.dart';
import 'package:flutterapp/music/Feed.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱의 초기 라우트 설정
      initialRoute: '/',
      // 라우트 목록 설정
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => Feed(),
      },
    );
  }
}


