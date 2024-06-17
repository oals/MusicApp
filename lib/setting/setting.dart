import 'package:flutter/material.dart';
import 'package:flutterapp/comnWidget/Appbar.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _settingState();
}

class _settingState extends State<Setting> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  void openDrawerCallback() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {

    MyAppBar myAppBar = MyAppBar(
      openDrawerCallback: openDrawerCallback,
      menuNM: '설정',
    );

    return Scaffold(
      key: _scaffoldKey,
      appBar: myAppBar,
      drawer: myAppBar.buildDrawer(context),
      body : Container(
        child: Text('setting'),
      ),
    );
  }
}


