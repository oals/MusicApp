import 'package:flutter/material.dart';

class CustomSnackBar {
  static void show(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.info_outline, color: Colors.white),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating, // 스낵바가 화면 상단에 고정됩니다.
        margin: EdgeInsets.only(top: kToolbarHeight + MediaQuery.of(context).padding.top), // 상단 여백 설정
      ),
    );
  }
}
