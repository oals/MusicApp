import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: Offset(0.0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
        curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.93,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Icon(Icons.image,color: Colors.white,),

            )
          ],
        ),
      ),
    );
  }
}