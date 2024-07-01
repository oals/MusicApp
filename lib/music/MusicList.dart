import 'package:flutter/material.dart';
import 'package:flutterapp/comnWidget/Appbar.dart';
import 'package:flutterapp/comnWidget/BottomNavigationBar.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/comnWidget/MusicInfo.dart';
import 'package:flutterapp/comnWidget/CustomBottomSheet.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key});


  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    //서버로 전송할 매개변수 값 가져오기
    final String title = args?['title'] ?? 0;
    final int userId = args?['userId'] ?? 0;
    final String opt = args?['opt'] ?? '';

    print(userId);
    print(opt);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(title,style: TextStyle(color: Colors.white,fontSize: 16),),
          backgroundColor: Colors.black87,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
            color: Colors.black87,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                musicInfo(
                  context: context,
                  imageWidth: 0.15,
                  containerWidth: 0.25,
                  containerHeight: 60.0,
                  fontSize1: 12.0,
                  fontSize2: 10.0,
                ),
                  musicInfo(
                    context: context,
                    imageWidth: 0.15,
                    containerWidth: 0.25,
                    containerHeight: 60.0,
                    fontSize1: 12.0,
                    fontSize2: 10.0,
                  ),
                  musicInfo(
                    context: context,
                    imageWidth: 0.15,
                    containerWidth: 0.25,
                    containerHeight: 60.0,
                    fontSize1: 12.0,
                    fontSize2: 10.0,
                  ),
                  musicInfo(
                    context: context,
                    imageWidth: 0.15,
                    containerWidth: 0.25,
                    containerHeight: 60.0,
                    fontSize1: 12.0,
                    fontSize2: 10.0,
                  ),
                ],
              ),
            )
        ),
    );
  }
}
