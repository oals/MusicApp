import 'package:flutter/material.dart';
import 'package:flutterapp/comnWidget/Appbar.dart';
import 'package:flutterapp/comnWidget/BottomNavigationBar.dart';
import 'package:flutterapp/music/Search.dart';
import 'package:flutterapp/music/Home.dart';
import 'package:flutterapp/music/Library.dart';
import 'package:flutterapp/music/Feed.dart';
import 'package:flutterapp/music/MusicList.dart';

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


  int _currentIndex = 0;

  void openDrawerCallback() {
    _scaffoldKey.currentState?.openDrawer();
  }

  String changeTitleNm(){
    List<String> titleNmLIst = ['Home','Feed','Search','Library','Home',"Liked History"];
    return titleNmLIst[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {


    List<Widget> widgetList = [
      Home(),
      Feed(),
      SearchMusic(),
      Library(
        onBottomTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
      ),
      Home(),
      MusicList()
    ];


    MyAppBar myAppBar = MyAppBar(openDrawerCallback: openDrawerCallback, menuNM: changeTitleNm(),);

    MyBottomNavigationBar myBottomNavigationBar = MyBottomNavigationBar(
      onBottomTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      currentIndex: _currentIndex,
    );


    return Scaffold(
      key: _scaffoldKey,
      appBar: myAppBar,
      body: IndexedStack(
        index: _currentIndex,
        children: widgetList,
      ),
      drawer: myAppBar.buildDrawer(context),
      bottomNavigationBar: myBottomNavigationBar,
    );
  }
}
