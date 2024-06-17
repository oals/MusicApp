import 'package:flutter/material.dart';

class MyAppPageView extends StatefulWidget {
  final PageController controller;

  const MyAppPageView({Key? key, required this.controller}) : super(key: key);

  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyAppPageView> {

  @override
  Widget build(BuildContext context) {
    print('ViewPage');
    print(widget.controller.keepPage);
    return PageView(
      controller: widget.controller,
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        Container(
          color: Colors.red,
          child: Image.asset('assets/flutterLogo.png',fit: BoxFit.contain,)
        ),
        Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              '이미지 2',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Text(
              '이미지 3',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ],
    );
  }
}
