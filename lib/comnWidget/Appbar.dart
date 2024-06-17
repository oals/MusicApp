import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/setting/setting.dart';
import 'package:flutterapp/user/Login.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {

  final VoidCallback openDrawerCallback;
  final String menuNM;
  const MyAppBar({super.key, required this.openDrawerCallback, required this.menuNM});

  void navigateTo(BuildContext context, String menuNm) {
    if (menuNm == '홈') {
      Navigator.pop(context); // Drawer 닫기
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    } else if (menuNm == '로그인') {
      Navigator.pop(context); // Drawer 닫기
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    } else if (menuNm == '회원가입') {
      Navigator.pop(context); // Drawer 닫기
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    } else if (menuNm == '설정') {
      Navigator.pop(context); // Drawer 닫기
      Navigator.push(context, MaterialPageRoute(builder: (context) => Setting()));
    }
  }

  @override
  Widget build(BuildContext context) {

    return AppBar(
      title: Text(menuNM),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          openDrawerCallback(); // Drawer 열기 콜백 호출
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Implement search functionality
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('메뉴'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              '홈',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 15,
              ),
            ),
            onTap: () {
              navigateTo(context, '홈');
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt),
            title: Text(
              '회원가입',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 15,
              ),
            ),
            onTap: () {
              navigateTo(context, '회원가입');
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text(
              '로그인',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 15,
              ),
            ),
            onTap: () {
              navigateTo(context, '로그인');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              '설정',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 15,
              ),
            ),
            onTap: () {
              navigateTo(context, '설정');
            },
          ),
        ],
      ),
    );
  }
}
