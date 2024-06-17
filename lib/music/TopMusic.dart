import 'package:flutter/material.dart';
import 'package:flutterapp/comnWidget/Appbar.dart';


class TopMusic extends StatefulWidget {
  const TopMusic({super.key});

  @override
  State<TopMusic> createState() => _TopMusicState();
}

class _TopMusicState extends State<TopMusic> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  void openDrawerCallback() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {

    MyAppBar myAppBar = MyAppBar(
      openDrawerCallback: openDrawerCallback,
      menuNM: 'Top 100',
    );

    return Scaffold(
      key: _scaffoldKey,
      appBar: myAppBar,
      body : Container(
        child: Text('music'),
      ),
      drawer: myAppBar.buildDrawer(context),
    );
  }
}


