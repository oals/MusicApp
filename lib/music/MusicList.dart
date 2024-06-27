import 'package:flutter/material.dart';
import 'package:flutterapp/comnWidget/Appbar.dart';
import 'package:flutterapp/comnWidget/BottomNavigationBar.dart';
import 'package:flutterapp/main.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Text('123'),
                  Text('123'),
                  Text('123'),
                  Text('123'),
                ],
              ),
            )
        ),
    );
  }
}
