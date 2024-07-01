import 'package:flutter/material.dart';
import '../music/MusicPlay.dart'; // MusicPlay 파일 경로에 따라 수정 필요
import 'CustomBottomSheet.dart'; // CustomBottomSheet 파일 경로에 따라 수정 필요

Widget musicInfo({
  required BuildContext context,
  double imageWidth = 0.12,
  double containerWidth = 0.2,
  double containerHeight = 50.0,
  double fontSize1 = 10.0,
  double fontSize2 = 8.0,
}) {
  return GestureDetector(
    onTap: () {
      CustomBottomSheet(
        context: context,
        builder: (context) => MusicPlay(), // MusicPlay 위젯을 보여줍니다.
      );
    },
    child: Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * containerWidth,
            height: containerHeight,
            color: Colors.black12,
            padding: EdgeInsets.all(2),
            child: Image.asset(
              'assets/flutterLogo.png',
              width: MediaQuery.of(context).size.width * imageWidth,
              height: containerHeight,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Container(
              height: containerHeight,
              color: Colors.black12,
              margin: EdgeInsets.all(2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '공공구 - 회색도시',
                    style: TextStyle(fontSize: fontSize1, color: Colors.white),
                  ),
                  Text(
                    'Admin',
                    style: TextStyle(fontSize: fontSize2, color: Colors.white),
                  ),
                  Text(
                    '4:19',
                    style: TextStyle(fontSize: fontSize2, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 45,
            height: containerHeight,
            color: Colors.black26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 0.2, // 선의 너비
                  color: Colors.grey[200],
                ),
                IconButton(
                  onPressed: () {
                    // Handle the IconButton tap event separately
                  },
                  icon: Icon(Icons.favorite_border, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
