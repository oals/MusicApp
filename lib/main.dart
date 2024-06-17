import 'package:flutter/material.dart';
import 'package:flutterapp/comnWidget/Appbar.dart';
import 'package:flutterapp/pageView/MyAppPageView.dart';
import 'package:flutterapp/setting/setting.dart';
import 'package:flutterapp/music/TopMusic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late PageController _controller;

  void openDrawerCallback() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController(keepPage: false); // keepPage 속성을 false로 설정
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    MyAppBar myAppBar = MyAppBar(
      openDrawerCallback: openDrawerCallback,
      menuNM: '메인',
    );

    return Scaffold(
      key: _scaffoldKey,
      appBar: myAppBar,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child : Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
              child: MyAppPageView(controller: _controller),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.white,
              margin: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      // 클릭 이벤트 처리
                      Navigator.pop(context); // Drawer 닫기
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TopMusic()));
                      print('박스가 클릭되었습니다.');
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // 테두리 색상 설정
                          width: 2, // 테두리 너비 설정
                        ),
                        borderRadius: BorderRadius.circular(10), // 네모난 박스의 모서리를 둥글게 만듦
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 13),
                        child: Column(
                          children: [
                            Icon(Icons.library_music),
                            Text('top100'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // 클릭 이벤트 처리
                      Navigator.pop(context); // Drawer 닫기
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TopMusic()));
                      print('박스가 클릭되었습니다.');
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // 테두리 색상 설정
                          width: 2, // 테두리 너비 설정
                        ),
                        borderRadius: BorderRadius.circular(10), // 네모난 박스의 모서리를 둥글게 만듦
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 13),
                        child: Column(
                          children: [
                            Icon(Icons.library_music),
                            Text('top100'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // 클릭 이벤트 처리
                      Navigator.pop(context); // Drawer 닫기
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TopMusic()));
                      print('박스가 클릭되었습니다.');
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // 테두리 색상 설정
                          width: 2, // 테두리 너비 설정
                        ),
                        borderRadius: BorderRadius.circular(10), // 네모난 박스의 모서리를 둥글게 만듦
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 13),
                        child: Column(
                          children: [
                            Icon(Icons.library_music),
                            Text('top100'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // 클릭 이벤트 처리
                      Navigator.pop(context); // Drawer 닫기
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TopMusic()));
                      print('박스가 클릭되었습니다.');
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // 테두리 색상 설정
                          width: 2, // 테두리 너비 설정
                        ),
                        borderRadius: BorderRadius.circular(10), // 네모난 박스의 모서리를 둥글게 만듦
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 13),
                        child: Column(
                          children: [
                            Icon(Icons.library_music),
                            Text('top100'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.blue,
              margin: EdgeInsets.only(top: 20),
            ),
          ],
        ),
      ),
      drawer: myAppBar.buildDrawer(context),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.accessible_outlined),
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        ),
      ),
    );
  }
}
